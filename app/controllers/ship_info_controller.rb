class ShipInfoController < ApplicationController
  before_action :authenticate

  # 残り経験値でソートする際に、便宜上の最大経験値として使う値
  MAX_EXP = 1000000

  # 艦娘別のレベル・経験値表示
  def level
    set_meta_tags title: 'レベル・経験値（艦娘別）'

    # 表示期間の指定（デフォルトは過去1ヶ月）
    if params[:range] and params[:range] == 'all'
      @range = :all

      # 図鑑 No. 順に、レベルの情報を取り出す
      # remodel_level の値にかかわらず、level は同じになるはずなので、GROUP BY で重複排除する
      # TODO MySQL の ONLY_FULL_GROUP_BY 対策
      statuses = ShipStatus.where(admiral_id: current_admiral.id).
          group(:book_no, :exported_at).order(book_no: :asc, exported_at: :asc)
    else
      @range = :month

      # 図鑑 No. 順に、レベルの情報を取り出す
      # remodel_level の値にかかわらず、level は同じになるはずなので、GROUP BY で重複排除する
      # TODO MySQL の ONLY_FULL_GROUP_BY 対策
      statuses = ShipStatus.where(admiral_id: current_admiral.id, exported_at: 1.month.ago..Time.current).
          group(:book_no, :exported_at).order(book_no: :asc, exported_at: :asc)
    end

    # 艦種を指定したい場合は、以下のクエリを実行する
    # TODO POST メソッドで以下のパラメータを渡すことで、表示する艦種を絞り込めるようにする
    # ship_type = '駆逐艦' など
=begin
    statuses = ShipStatus.where(admiral_id: current_admiral.id).
        group(:book_no, :exported_at).order(book_no: :asc, exported_at: :asc).
        joins(:ship_master).where(ship_masters: { ship_type: '駆逐艦' })
=end

    # 艦娘データがない場合
    if statuses.blank?
      render :action => 'level_blank'
      return
    end

    # 図鑑 No. とマスタデータの対応関係
    masters = {}
    ShipMaster.all.each{|m| masters[m.book_no] = m }

    # statuses から、「改」だけ独立した図鑑 No. になっている艦娘を除去
    # statuses の実体は ActiveRecord::relation である。そのため、to_a で配列にするまでは配列のメソッドは使えない
    statuses = statuses.to_a
    statuses.reject!{|s| masters[s.book_no].kai_only? }

    # レベルが上位5位の艦娘だけ、初期状態でグラフを表示する
    last_exported_at = statuses.map{|s| s.exported_at }.max
    visible_ships = statuses.select{|s| s.exported_at == last_exported_at }.
        sort{|a, b| b.level <=> a.level }.first(5).map{|s| s.book_no }

    # キーは図鑑 No. で値は [時刻, レベル または 経験値] の配列
    levels = {}
    exps = {}
    statuses.each do |s|
      levels[s.book_no] ||= []
      levels[s.book_no] << [s.exported_at.to_i * 1000, s.level]

      exps[s.book_no] ||= []
      exps[s.book_no] << [s.exported_at.to_i * 1000, s.level_to_exp]
    end

    @series_level = []
    levels.keys.each do |book_no|
      @series_level << {
          'name' => "#{masters[book_no].ship_name}",
          'data' => levels[book_no],
          'visible' => visible_ships.include?(book_no),
      }
    end

    @series_exp = []
    exps.keys.each do |book_no|
      @series_exp << {
          'name' => "#{masters[book_no].ship_name}",
          'data' => exps[book_no],
          'visible' => visible_ships.include?(book_no),
      }
    end

    # 各艦娘の、指定された期間内の最初のステータスと最後のステータスを取得
    # @forecasts[図鑑No.] = {
    #   :name => 艦娘名,
    #   :begin => 最初のステータス,
    #   :end => 最後のステータス,
    #   :lv99_at => Lv 99 到達予想日時
    # }
    @forecasts = {}

    # 最初のステータスと最後のステータスを取得
    statuses.each do |s|
      # 改カードのみの図鑑エントリは除外
      next if masters[s.book_no].kai_only?

      # exported_at ASC でソート済みのため、その図鑑 No. で最初に登場したものが最初のステータス
      @forecasts[s.book_no] ||= { :name => masters[s.book_no].ship_name, :begin => s }
      @forecasts[s.book_no][:end] = s
    end

    # 指定された期間にレベルが変わっていない艦娘は除外
    @forecasts.select!{|b, f| f[:begin].level != f[:end].level }

    # 到達予想日の計算
    @forecasts.each do |book_no, forecast|
      # 最初と最後でレベルが同じなら、傾き 0 なので予想できない
      s_begin, s_end = forecast[:begin], forecast[:end]

      # 1 秒あたりの増加経験値 = 経験値の差 / 経過時間(秒、float 型)
      exp_per_sec = (s_end.level_to_exp - s_begin.level_to_exp).to_f / (s_end.exported_at - s_begin.exported_at)

      # Lv 50 到達予想時間（Lv 70 の経験値は 122,500）
      if s_end.level < 50
        forecast[:lv50_at] = s_begin.exported_at + (122500 - s_begin.level_to_exp) / exp_per_sec
        forecast[:lv50_rest] = 122500 - s_end.level_to_exp
      end

      # Lv 70 到達予想時間（Lv 70 の経験値は 265,000）
      if s_end.level < 70
        forecast[:lv70_at] = s_begin.exported_at + (265000 - s_begin.level_to_exp) / exp_per_sec
        forecast[:lv70_rest] = 265000 - s_end.level_to_exp
      end

      # Lv 90 到達予想時間（Lv 90 の経験値は 545,500）
      if s_end.level < 90
        forecast[:lv90_at] = s_begin.exported_at + (545500 - s_begin.level_to_exp) / exp_per_sec
        forecast[:lv90_rest] = 545000 - s_end.level_to_exp
      end

      # Lv 99 到達予想時間（Lv 99 の経験値は 1,000,000）
      if s_end.level < 99
        forecast[:lv99_at] = s_begin.exported_at + (1000000 - s_begin.level_to_exp) / exp_per_sec
        forecast[:lv99_rest] = 1000000 - s_end.level_to_exp
      end
    end

    # 到達予想日が最も近い艦娘をハイライト
    # min_by の返り値は [ book_no, forecast ] という配列になる
    soon = @forecasts.min_by{|b, f| f[:lv50_rest] ? f[:lv50_rest] : MAX_EXP }
    soon[1][:lv50_soon] = true if soon
    soon = @forecasts.min_by{|b, f| f[:lv70_rest] ? f[:lv70_rest] : MAX_EXP }
    soon[1][:lv70_soon] = true if soon
    soon = @forecasts.min_by{|b, f| f[:lv90_rest] ? f[:lv90_rest] : MAX_EXP }
    soon[1][:lv90_soon] = true if soon
    soon = @forecasts.min_by{|b, f| f[:lv99_rest] ? f[:lv99_rest] : MAX_EXP }
    soon[1][:lv99_soon] = true if soon
  end

  # 艦種別のレベル・経験値表示
  def level_summary
    set_meta_tags title: 'レベル・経験値・★5艦娘数（艦種別）'

    # 表示期間の指定（デフォルトは過去1ヶ月）
    if params[:range] and params[:range] == 'all'
      @range = :all

      # 図鑑 No. 順に、レベルの情報を取り出す
      # book_no が同じでも remodel_level が違うと艦種が変わる艦娘がいる（伊勢、日向）
      # そのため、remodel_level も取得する
      statuses = ShipStatus.where(admiral_id: current_admiral.id).group(:book_no, :remodel_level, :exported_at).order(exported_at: :asc)
    else
      @range = :month

      # 図鑑 No. 順に、レベルの情報を取り出す
      # book_no が同じでも remodel_level が違うと艦種が変わる艦娘がいる（伊勢、日向）
      # そのため、remodel_level も取得する
      statuses = ShipStatus.where(admiral_id: current_admiral.id, exported_at: 1.month.ago..Time.current).
          group(:book_no, :remodel_level, :exported_at).order(exported_at: :asc)
    end

    # 艦娘データがない場合
    if statuses.blank?
      render :action => 'level_summary_blank'
      return
    end

    # 図鑑 No. とマスタデータの対応関係
    masters = {}
    ShipMaster.all.each{|m| masters[m.book_no] = m }

    # 艦種の並び順は、艦娘図鑑での登場順とする
    # ただし、未入手の艦種は表示しない
    ship_types = statuses.sort_by{|s| s.book_no }.map{|s| masters[s.book_no].ship_type_by_status(s) }.uniq

    # キーは艦種で値は [時刻, 合計レベル または 平均レベル] の配列
    levels, avg_levels = {}, {}
    # キーは艦種で値は [時刻, 合計経験値 または 平均経験値] の配列
    exps, avg_exps = {}, {}
    # キーは艦種で値は [時刻, 星5の艦娘数] の配列
    five_stars, five_stars_kai = {}, {}

    ship_types.each do |ship_type|
      # 時刻ごとのレベル・経験値
      type_levels = {}
      type_exps = {}

      # 時刻ごとの加算済み艦娘名のリスト（同じ艦娘のレベルを2回加算しないためのチェックに使う）
      base_ship_names = {}

      statuses.select{|s| masters[s.book_no].ship_type_by_status(s) == ship_type }.each do |s|
        # ベースとなる艦娘名
        base_ship_name = masters[s.book_no].base_ship_name

        # その時間の、その艦娘のレベルを加算済みかどうかチェック
        base_ship_names[s.exported_at] ||= []
        next if base_ship_names[s.exported_at].include?(base_ship_name)
        base_ship_names[s.exported_at] << base_ship_name

        type_levels[s.exported_at] ||= 0
        type_levels[s.exported_at] += s.level

        type_exps[s.exported_at] ||= 0
        type_exps[s.exported_at] += s.level_to_exp
      end

      # 合計レベルおよび経験値の計算
      levels[ship_type] = type_levels.keys.map{|exported_at| [ exported_at.to_i * 1000, type_levels[exported_at] ] }
      exps[ship_type] = type_exps.keys.map{|exported_at| [ exported_at.to_i * 1000, type_exps[exported_at] ] }

      # 平均レベルおよび経験値の計算
      avg_levels[ship_type] = type_levels.keys.map do |exported_at|
        if base_ship_names[exported_at].blank?
          [ exported_at.to_i * 1000, 0 ]
        else
          [ exported_at.to_i * 1000, (type_levels[exported_at].to_f / base_ship_names[exported_at].size).round(2) ]
        end
      end
      avg_exps[ship_type] = type_exps.keys.map do |exported_at|
        if base_ship_names[exported_at].blank?
          [ exported_at.to_i * 1000, 0 ]
        else
          [ exported_at.to_i * 1000, (type_exps[exported_at].to_f / base_ship_names[exported_at].size).round(2) ]
        end
      end

      # 星5の艦娘数
      type_5stars = {}
      type_5stars_kai = {}

      statuses.select{|s| masters[s.book_no].ship_type_by_status(s) == ship_type }.each do |s|
        type_5stars[s.exported_at] ||= 0
        type_5stars_kai[s.exported_at] ||= 0
        if s.star_num == 5
          case s.remodel_level
            when 0
              type_5stars[s.exported_at] += 1
            when 1
              type_5stars_kai[s.exported_at] += 1
          end
        end
      end

      five_stars[ship_type] = type_5stars.keys.map{|exported_at| [ exported_at.to_i * 1000, type_5stars[exported_at] ] }
      five_stars_kai[ship_type] = type_5stars_kai.keys.map{|exported_at| [ exported_at.to_i * 1000, type_5stars_kai[exported_at] ] }
    end

    @series_total_level = []
    ship_types.each do |ship_type|
      @series_total_level << {
          'name' => ship_type,
          'data' => levels[ship_type],
      }
    end

    @series_total_exp = []
    ship_types.each do |ship_type|
      @series_total_exp << {
          'name' => ship_type,
          'data' => exps[ship_type],
      }
    end

    @series_average_level = []
    ship_types.each do |ship_type|
      @series_average_level << {
          'name' => ship_type,
          'data' => avg_levels[ship_type],
      }
    end

    @series_average_exp = []
    ship_types.each do |ship_type|
      @series_average_exp << {
          'name' => ship_type,
          'data' => avg_exps[ship_type],
      }
    end

    @series_5stars = []
    ship_types.each do |ship_type|
      @series_5stars << {
          'name' => ship_type,
          'data' => five_stars[ship_type],
      }
    end

    @series_5stars_kai = []
    ship_types.each do |ship_type|
      @series_5stars_kai << {
          'name' => ship_type,
          'data' => five_stars_kai[ship_type],
      }
    end
  end

  # カード入手数・入手率の表示
  def card
    set_meta_tags title: 'カード入手数・入手率'

    # 表示期間の指定（デフォルトは過去1ヶ月）
    if params[:range] and params[:range] == 'all'
      @range = :all
    else
      @range = :month
    end

    # 入手済みのカードのデータを全入手
    ship_cards = ShipCard.where(admiral_id: current_admiral.id)

    # 艦娘図鑑データがない場合
    if ship_cards.blank?
      render :action => 'card_blank'
      return
    end

    # 実装済みの艦娘のマスタデータを全入手
    ship_masters = ShipMaster.where.not(implemented_at: nil)

    # どの時刻にカードが何枚増えたかを調べる
    # gains[0..5][時刻] = その時刻に増えた枚数
    # 注意：以下のように宣言すると、すべて同じオブジェクトになってしまう
    # nums = Array.new(6, {})
    gains = Array.new(6){ Hash.new }

    ship_cards.each do |card|
      ship_master = ship_masters.find{|m| m.book_no == card.book_no }

      case ship_master.remodel_level
        when 0
          gains[card.card_index][card.first_exported_at] ||= 0
          gains[card.card_index][card.first_exported_at] += 1
        when 1
          # 改から始まる図鑑 No. の場合は、1枚目のカードを改と見なす
          gains[card.card_index + 3][card.first_exported_at] ||= 0
          gains[card.card_index + 3][card.first_exported_at] += 1
        else
          # 改二以上のカードは現時点で未実装のため、単純に無視する
      end
    end

    # グラフに描画する時刻の一覧（時刻順にソート済）
    timestamps = ShipCardTimestamp.where(admiral_id: current_admiral.id).order(exported_at: :asc).map{|t| t.exported_at }

    # 最終的な枚数を調べる
    # nums[0..5][時刻] = その時刻までに入手した枚数
    nums = Array.new(6){ Hash.new }

    # 時刻順に積算していく
    6.times do |idx|
      # 1つ前の時刻の値
      prev_num = 0

      timestamps.each do |timestamp|
        if gains[idx][timestamp].nil?
          # 増分がなければ、前の時刻と同じ個数をセット
          nums[idx][timestamp] = prev_num
        else
          nums[idx][timestamp] = prev_num + gains[idx][timestamp]
          prev_num = nums[idx][timestamp]
        end
      end
    end

    # 実装済みの枚数を調べる
    # nums[0..5][時刻] = その時刻までに実装された枚数
    impls = Array.new(6){ Hash.new }

    # ship_masters テーブルからカード枚数の情報を生成
    released_nums = get_released_nums

    # 時刻順に取得していく
    6.times do |idx|
      timestamps.each do |timestamp|
        impls[idx][timestamp] = get_total(released_nums, idx, timestamp)
      end
    end

    # 現時点のカード総数に対する割合を計算
    # rates[0..5][時刻] = 割合
    rates = Array.new(6){ Hash.new }

    6.times do |idx|
      timestamps.each do |exported_at|
        # 整数同士で普通に割り算すると、小数点以下が無視されて 0 になる
        rates[idx][exported_at] = (100.0 * nums[idx][exported_at] / impls[idx][exported_at]).round(1)
      end
    end

    # 全体の数および割合を計算
    total_num_data = []
    total_rate_data = []
    total_impl_data = []
    timestamps.each do |exported_at|
      # @range == :month の場合は、1ヶ月以内の結果のみプロット
      next if @range == :month and exported_at < 1.month.ago

      timestamp = exported_at.to_i * 1000
      num = 6.times.map{|idx| nums[idx][exported_at] }.sum
      num_impl = 6.times.map{|idx| impls[idx][exported_at] }.sum
      total_num_data << [ timestamp, num ]
      total_rate_data << [ timestamp, (100.0 * num / num_impl).round(1) ]
      total_impl_data << [ timestamp, num_impl ]
    end
    @series_num = [{ 'name' => '全体', 'data' => total_num_data }]
    @series_rate = [{ 'name' => '全体', 'data' => total_rate_data, 'tooltip' => { 'valueSuffix' => ' %' } }]
    @series_impl = [{ 'name' => '全体', 'data' => total_impl_data }]

    %w(N Nホロ N中破 改 改ホロ 改中破).each_with_index do |name, idx|
      num_data = []
      timestamps.each do |exported_at|
        # @range == :month の場合は、1ヶ月以内の結果のみプロット
        next if @range == :month and exported_at < 1.month.ago
        num_data << [exported_at.to_i * 1000, nums[idx][exported_at]]
      end

      @series_num << {
          'name' => name,
          'data' => num_data,
      }

      rate_data = []
      timestamps.each do |exported_at|
        # @range == :month の場合は、1ヶ月以内の結果のみプロット
        next if @range == :month and exported_at < 1.month.ago
        rate_data << [exported_at.to_i * 1000, rates[idx][exported_at]]
      end

      @series_rate << {
          'name' => name,
          'data' => rate_data,
          'tooltip' => { 'valueSuffix' => ' %' }
      }

      impl_data = []
      timestamps.each do |exported_at|
        # @range == :month の場合は、1ヶ月以内の結果のみプロット
        next if @range == :month and exported_at < 1.month.ago
        impl_data << [exported_at.to_i * 1000, impls[idx][exported_at]]
      end

      @series_impl << {
          'name' => name,
          'data' => impl_data,
      }
    end
  end

  private

  # 指定された時刻の時点での総カード枚数を、以下のような形式で返します。
=begin
    released_nums = [0..5][
        # リリース時点 2016-04-26
        [ Time.parse('2016-04-26T07:00:00+09:00'), 62 ],

        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        [ Time.parse('2016-04-28T07:00:00+09:00'), 71 ],

        # 2016-05-26：5隻追加（雪風、睦月、如月、古鷹、加古）
        [ Time.parse('2016-05-26T07:00:00+09:00'), 76 ],

        # 2016-06-30：5隻追加（綾波、敷波、那智、足柄、羽黒）
        [ Time.parse('2016-06-30T07:00:00+09:00'), 81 ],

        # 2016-07-26：3隻追加（陽炎、不知火、黒潮）
        [ Time.parse('2016-07-26T07:00:00+09:00'), 84 ],

        # 2016-08-23：4隻追加（長良、五十鈴、名取、由良）
        [ Time.parse('2016-08-23T07:00:00+09:00'), 88 ],
    ]
=end
  def get_released_nums
    # TODO released_nums を一度生成したら Redis に一定時間キャッシュする処理を追加

    # 実装済みの艦娘のマスタデータを全入手
    ship_masters = ShipMaster.where.not(implemented_at: nil)

    # 艦娘追加が行われたタイムスタンプの抽出
    timestamps = ship_masters.map{|m| m.implemented_at }.uniq.sort

    # card_index および時刻ごとの増加枚数を計算
    gains = Array.new(6){ Hash.new }
    # 初期値の設定
    6.times.each{|idx| timestamps.each{|t| gains[idx][t] = 0 } }

    ship_masters.each do |m|
      case m.remodel_level
        when 0
          m.variation_num.times.each{|idx| gains[idx][m.implemented_at] += 1 }
        when 1
          # 改から始まる図鑑 No. の場合は、1枚目のカードを改と見なす
          m.variation_num.times.each{|idx| gains[idx + 3][m.implemented_at] += 1 }
        else
          # 改二以上のカードは現時点で未実装のため、単純に無視する
      end
    end

    # card_index ごとのカード総数を計算
    released_nums = Array.new(6){ Array.new }
    6.times.each do |idx|
      prev_num = 0
      timestamps.each do |implemented_at|
        num = prev_num + gains[idx][implemented_at]
        released_nums[idx] << [ implemented_at, num ]
        prev_num = num
      end
    end

    released_nums
  end

  def get_total(released_nums, card_index, exported_at)
    # リリース前の時刻を渡された場合のデフォルト値は、リリース時点のカード枚数（62）
    prev_num = 62

    released_nums[card_index].each do |released_at, num|
      return prev_num if exported_at < released_at
      prev_num = num
    end

    # いずれにも該当しなかった場合は、最新のカード枚数を返す
    prev_num
  end
end
