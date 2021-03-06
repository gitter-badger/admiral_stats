module ApplicationHelper
  # ログイン状態の場合はリンク表示し、そうでない場合は文字列のみを表示する
  def link_to_if_logged_in(name = nil, options = nil, html_options = nil, &block)
    if logged_in?
      link_to name, options, html_options, &block
    else
      name
    end
  end

  # SEGA 公式のプレイヤーズサイトの URL を返します。
  def sega_url
    'https://kancolle-arcade.net/ac/#/top'
  end

  # admiral_stats_exporter の URL を返します。
  def exporter_url
    'https://github.com/muziyoshiz/admiral_stats_exporter'
  end

  # @muziyoshiz の URL を返します。
  def twitter_muziyoshiz_url
    'https://twitter.com/muziyoshiz'
  end

  # @admiral_stats の URL を返します。
  def twitter_admiral_stats_url
    'https://twitter.com/admiral_stats'
  end

  def link_to_exporter_url
    link_to 'admiral_stats_exporter', exporter_url, :target => '_blank'
  end

  def link_to_twitter_muziyoshiz
    link_to '@muziyoshiz', twitter_muziyoshiz_url, :target => '_blank'
  end

  def link_to_twitter_admiral_stats
    link_to '@admiral_stats', twitter_admiral_stats_url, :target => '_blank'
  end

  # meta-tags に渡すデフォルト値
  def default_meta_tags
    {
        # Site title
        site: 'Admiral Stats',
        # Page title
        title: '',
        # Page description
        description: '',
        # Page keywords
        keywords: '艦隊これくしょん, 艦これ, 艦これアーケード, 艦これArcade, 艦これAC, 艦アケ, プレイデータ, グラフ化',
        # Text used to separate site title from page title
        separator: '-',
        # Site title - Page title
        reverse: true,
        # モバイル用 viewport
        viewport: 'width=device-width, initial-scale=1.0',
    }
  end
end
