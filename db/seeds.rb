# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ship_masters = [
    {
        book_no: 1,
        ship_class: '長門型',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: '長門',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 2,
        ship_class: '長門型',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: '陸奥',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 3,
        ship_class: '伊勢型',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: '伊勢',
        variation_num: 3,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 4,
        ship_class: '伊勢型',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: '日向',
        variation_num: 3,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 5,
        ship_class: '陽炎型',
        ship_class_index: 8,
        ship_type: '駆逐艦',
        ship_name: '雪風',
        variation_num: 6,
        # 2016-05-26：5隻追加（雪風、睦月、如月、古鷹、加古）
        implemented_at: '2016-05-26T07:00:00+09:00',
    },
    {
        book_no: 6,
        ship_class: '赤城型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '赤城',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 7,
        ship_class: '加賀型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '加賀',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 8,
        ship_class: '蒼龍型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '蒼龍',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 9,
        ship_class: '飛龍型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '飛龍',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 10,
        ship_class: '島風型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '島風',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 11,
        ship_class: '吹雪型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '吹雪',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 12,
        ship_class: '吹雪型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '白雪',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 13,
        ship_class: '吹雪型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '初雪',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 14,
        ship_class: '吹雪型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '深雪',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 15,
        ship_class: '吹雪型',
        ship_class_index: 5,
        ship_type: '駆逐艦',
        ship_name: '叢雲',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 16,
        ship_class: '吹雪型',
        ship_class_index: 9,
        ship_type: '駆逐艦',
        ship_name: '磯波',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 17,
        ship_class: '綾波型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '綾波',
        variation_num: 6,
        # 2016-06-30：5隻追加（綾波、敷波、那智、足柄、羽黒）
        implemented_at: '2016-06-30T07:00:00+09:00',
    },
    {
        book_no: 18,
        ship_class: '綾波型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '敷波',
        variation_num: 6,
        # 2016-06-30：5隻追加（綾波、敷波、那智、足柄、羽黒）
        implemented_at: '2016-06-30T07:00:00+09:00',
    },
    {
        book_no: 19,
        ship_class: '球磨型',
        ship_class_index: 4,
        ship_type: '軽巡洋艦',
        ship_name: '大井',
        variation_num: 3,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 20,
        ship_class: '球磨型',
        ship_class_index: 3,
        ship_type: '軽巡洋艦',
        ship_name: '北上',
        variation_num: 3,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 21,
        ship_class: '金剛型',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: '金剛',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 22,
        ship_class: '金剛型',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: '比叡',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 23,
        ship_class: '金剛型',
        ship_class_index: 3,
        ship_type: '戦艦',
        ship_name: '榛名',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 24,
        ship_class: '金剛型',
        ship_class_index: 4,
        ship_type: '戦艦',
        ship_name: '霧島',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 25,
        ship_class: '鳳翔型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '鳳翔',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 26,
        ship_class: '扶桑型',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: '扶桑',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 27,
        ship_class: '扶桑型',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: '山城',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 28,
        ship_class: '天龍型',
        ship_class_index: 1,
        ship_type: '軽巡洋艦',
        ship_name: '天龍',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 29,
        ship_class: '天龍型',
        ship_class_index: 2,
        ship_type: '軽巡洋艦',
        ship_name: '龍田',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 30,
        ship_class: '龍驤型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '龍驤',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 31,
        ship_class: '睦月型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '睦月',
        variation_num: 6,
        # 2016-05-26：5隻追加（雪風、睦月、如月、古鷹、加古）
        implemented_at: '2016-05-26T07:00:00+09:00',
    },
    {
        book_no: 32,
        ship_class: '睦月型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '如月',
        variation_num: 6,
        # 2016-05-26：5隻追加（雪風、睦月、如月、古鷹、加古）
        implemented_at: '2016-05-26T07:00:00+09:00',
    },
    {
        book_no: 33,
        ship_class: '睦月型',
        ship_class_index: 5,
        ship_type: '駆逐艦',
        ship_name: '皐月',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 34,
        ship_class: '睦月型',
        ship_class_index: 7,
        ship_type: '駆逐艦',
        ship_name: '文月',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 35,
        ship_class: '睦月型',
        ship_class_index: 8,
        ship_type: '駆逐艦',
        ship_name: '長月',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 36,
        ship_class: '睦月型',
        ship_class_index: 9,
        ship_type: '駆逐艦',
        ship_name: '菊月',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 37,
        ship_class: '睦月型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '三日月',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 38,
        ship_class: '睦月型',
        ship_class_index: 11,
        ship_type: '駆逐艦',
        ship_name: '望月',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 39,
        ship_class: '球磨型',
        ship_class_index: 1,
        ship_type: '軽巡洋艦',
        ship_name: '球磨',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 40,
        ship_class: '球磨型',
        ship_class_index: 2,
        ship_type: '軽巡洋艦',
        ship_name: '多摩',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 41,
        ship_class: '球磨型',
        ship_class_index: 5,
        ship_type: '軽巡洋艦',
        ship_name: '木曾',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 42,
        ship_class: '長良型',
        ship_class_index: 1,
        ship_type: '軽巡洋艦',
        ship_name: '長良',
        variation_num: 6,
        # 2016-08-23：4隻追加（長良、五十鈴、名取、由良）
        implemented_at: '2016-08-23T07:00:00+09:00',
    },
    {
        book_no: 43,
        ship_class: '長良型',
        ship_class_index: 2,
        ship_type: '軽巡洋艦',
        ship_name: '五十鈴',
        variation_num: 6,
        # 2016-08-23：4隻追加（長良、五十鈴、名取、由良）
        implemented_at: '2016-08-23T07:00:00+09:00',
    },
    {
        book_no: 44,
        ship_class: '長良型',
        ship_class_index: 3,
        ship_type: '軽巡洋艦',
        ship_name: '名取',
        variation_num: 6,
        # 2016-08-23：4隻追加（長良、五十鈴、名取、由良）
        implemented_at: '2016-08-23T07:00:00+09:00',
    },
    {
        book_no: 45,
        ship_class: '長良型',
        ship_class_index: 4,
        ship_type: '軽巡洋艦',
        ship_name: '由良',
        variation_num: 6,
        # 2016-08-23：4隻追加（長良、五十鈴、名取、由良）
        implemented_at: '2016-08-23T07:00:00+09:00',
    },
    {
        book_no: 46,
        ship_class: '川内型',
        ship_class_index: 1,
        ship_type: '軽巡洋艦',
        ship_name: '川内',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 47,
        ship_class: '川内型',
        ship_class_index: 2,
        ship_type: '軽巡洋艦',
        ship_name: '神通',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 48,
        ship_class: '川内型',
        ship_class_index: 3,
        ship_type: '軽巡洋艦',
        ship_name: '那珂',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 49,
        ship_class: '千歳型',
        ship_class_index: 1,
        ship_type: '水上機母艦',
        ship_name: '千歳',
        variation_num: 3,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 50,
        ship_class: '千歳型',
        ship_class_index: 2,
        ship_type: '水上機母艦',
        ship_name: '千代田',
        variation_num: 3,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 51,
        ship_class: '最上型',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: '最上',
        variation_num: 3,
        # 2016-09-15：4隻追加（最上、三隈、鈴谷、熊野）
        implemented_at: '2016-09-15T07:00:00+09:00',
    },
    {
        book_no: 52,
        ship_class: '古鷹型',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: '古鷹',
        variation_num: 6,
        # 2016-05-26：5隻追加（雪風、睦月、如月、古鷹、加古）
        implemented_at: '2016-05-26T07:00:00+09:00',
    },
    {
        book_no: 53,
        ship_class: '古鷹型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '加古',
        variation_num: 6,
        # 2016-05-26：5隻追加（雪風、睦月、如月、古鷹、加古）
        implemented_at: '2016-05-26T07:00:00+09:00',
    },
    {
        book_no: 54,
        ship_class: '青葉型',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: '青葉',
        variation_num: 6,
        
    },
    {
        book_no: 55,
        ship_class: '妙高型',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: '妙高',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 56,
        ship_class: '妙高型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '那智',
        variation_num: 6,
        # 2016-06-30：5隻追加（綾波、敷波、那智、足柄、羽黒）
        implemented_at: '2016-06-30T07:00:00+09:00',
    },
    {
        book_no: 57,
        ship_class: '妙高型',
        ship_class_index: 3,
        ship_type: '重巡洋艦',
        ship_name: '足柄',
        variation_num: 6,
        # 2016-06-30：5隻追加（綾波、敷波、那智、足柄、羽黒）
        implemented_at: '2016-06-30T07:00:00+09:00',
    },
    {
        book_no: 58,
        ship_class: '妙高型',
        ship_class_index: 4,
        ship_type: '重巡洋艦',
        ship_name: '羽黒',
        variation_num: 6,
        # 2016-06-30：5隻追加（綾波、敷波、那智、足柄、羽黒）
        implemented_at: '2016-06-30T07:00:00+09:00',
    },
    {
        book_no: 59,
        ship_class: '高雄型',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: '高雄',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 60,
        ship_class: '高雄型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '愛宕',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 61,
        ship_class: '高雄型',
        ship_class_index: 3,
        ship_type: '重巡洋艦',
        ship_name: '摩耶',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 62,
        ship_class: '高雄型',
        ship_class_index: 4,
        ship_type: '重巡洋艦',
        ship_name: '鳥海',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 63,
        ship_class: '利根型',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: '利根',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 64,
        ship_class: '利根型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '筑摩',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 65,
        ship_class: '飛鷹型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '飛鷹',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 66,
        ship_class: '飛鷹型',
        ship_class_index: 2,
        ship_type: '軽空母',
        ship_name: '隼鷹',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 67,
        ship_class: '綾波型',
        ship_class_index: 7,
        ship_type: '駆逐艦',
        ship_name: '朧',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 68,
        ship_class: '綾波型',
        ship_class_index: 8,
        ship_type: '駆逐艦',
        ship_name: '曙',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 69,
        ship_class: '綾波型',
        ship_class_index: 9,
        ship_type: '駆逐艦',
        ship_name: '漣',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 70,
        ship_class: '綾波型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '潮',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 71,
        ship_class: '暁型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '暁',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 72,
        ship_class: '暁型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '響',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 73,
        ship_class: '暁型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '雷',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 74,
        ship_class: '暁型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '電',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 75,
        ship_class: '初春型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '初春',
        variation_num: 6,
        
    },
    {
        book_no: 76,
        ship_class: '初春型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '子日',
        variation_num: 6,
        
    },
    {
        book_no: 77,
        ship_class: '初春型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '若葉',
        variation_num: 6,
        
    },
    {
        book_no: 78,
        ship_class: '初春型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '初霜',
        variation_num: 6,
        
    },
    {
        book_no: 79,
        ship_class: '白露型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '白露',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 80,
        ship_class: '白露型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '時雨',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 81,
        ship_class: '白露型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '村雨',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 82,
        ship_class: '白露型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '夕立',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 83,
        ship_class: '白露型',
        ship_class_index: 6,
        ship_type: '駆逐艦',
        ship_name: '五月雨',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 84,
        ship_class: '白露型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '涼風',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 85,
        ship_class: '朝潮型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '朝潮',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 86,
        ship_class: '朝潮型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '大潮',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 87,
        ship_class: '朝潮型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '満潮',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 88,
        ship_class: '朝潮型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '荒潮',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 89,
        ship_class: '朝潮型',
        ship_class_index: 9,
        ship_type: '駆逐艦',
        ship_name: '霰',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 90,
        ship_class: '朝潮型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '霞',
        variation_num: 6,
        # 2016-04-28：9隻追加（長門、陸奥、白雪、初雪、深雪、磯波、涼風、霰、霞）
        implemented_at: '2016-04-28T07:00:00+09:00',
    },
    {
        book_no: 91,
        ship_class: '陽炎型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '陽炎',
        variation_num: 6,
        # 2016-07-26：3隻追加（陽炎、不知火、黒潮）
        implemented_at: '2016-07-26T07:00:00+09:00',
    },
    {
        book_no: 92,
        ship_class: '陽炎型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '不知火',
        variation_num: 6,
        # 2016-07-26：3隻追加（陽炎、不知火、黒潮）
        implemented_at: '2016-07-26T07:00:00+09:00',
    },
    {
        book_no: 93,
        ship_class: '陽炎型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '黒潮',
        variation_num: 6,
        # 2016-07-26：3隻追加（陽炎、不知火、黒潮）
        implemented_at: '2016-07-26T07:00:00+09:00',
    },
    {
        book_no: 94,
        ship_class: '祥鳳型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '祥鳳',
        variation_num: 6,
        
    },
    {
        book_no: 95,
        ship_class: '千歳型',
        ship_class_index: 1,
        ship_type: '水上機母艦',
        ship_name: '千歳改',
        variation_num: 3,
        remodel_level: 1,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 96,
        ship_class: '千歳型',
        ship_class_index: 2,
        ship_type: '水上機母艦',
        ship_name: '千代田改',
        variation_num: 3,
        remodel_level: 1,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 97,
        ship_class: '球磨型',
        ship_class_index: 4,
        ship_type: '重雷装巡洋艦',
        ship_name: '大井改',
        variation_num: 3,
        remodel_level: 1,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 98,
        ship_class: '球磨型',
        ship_class_index: 3,
        ship_type: '重雷装巡洋艦',
        ship_name: '北上改',
        variation_num: 3,
        remodel_level: 1,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 99,
        ship_class: '千歳型',
        ship_class_index: 1,
        ship_type: '水上機母艦',
        ship_name: '千歳甲',
        variation_num: 3,
        
    },
    {
        book_no: 100,
        ship_class: '千歳型',
        ship_class_index: 2,
        ship_type: '水上機母艦',
        ship_name: '千代田甲',
        variation_num: 3,
        
    },
    {
        book_no: 101,
        ship_class: '最上型',
        ship_class_index: 1,
        ship_type: '航空巡洋艦',
        ship_name: '最上改',
        variation_num: 3,
        remodel_level: 1,
        # 2016-09-15：4隻追加（最上、三隈、鈴谷、熊野）
        implemented_at: '2016-09-15T07:00:00+09:00',
    },
    {
        book_no: 102,
        ship_class: '伊勢型',
        ship_class_index: 1,
        ship_type: '航空戦艦',
        ship_name: '伊勢改',
        variation_num: 3,
        remodel_level: 1,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 103,
        ship_class: '伊勢型',
        ship_class_index: 2,
        ship_type: '航空戦艦',
        ship_name: '日向改',
        variation_num: 3,
        remodel_level: 1,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 104,
        ship_class: '千歳型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '千歳航',
        variation_num: 3,
        
    },
    {
        book_no: 105,
        ship_class: '千歳型',
        ship_class_index: 2,
        ship_type: '軽空母',
        ship_name: '千代田航',
        variation_num: 3,
        
    },
    {
        book_no: 106,
        ship_class: '翔鶴型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '翔鶴',
        variation_num: 6,
        
    },
    {
        book_no: 107,
        ship_class: '翔鶴型',
        ship_class_index: 2,
        ship_type: '正規空母',
        ship_name: '瑞鶴',
        variation_num: 3,
        
    },
    {
        book_no: 108,
        ship_class: '翔鶴型',
        ship_class_index: 2,
        ship_type: '正規空母',
        ship_name: '瑞鶴改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 109,
        ship_class: '長良型',
        ship_class_index: 5,
        ship_type: '軽巡洋艦',
        ship_name: '鬼怒',
        variation_num: 6,
        
    },
    {
        book_no: 110,
        ship_class: '長良型',
        ship_class_index: 6,
        ship_type: '軽巡洋艦',
        ship_name: '阿武隈',
        variation_num: 6,
        
    },
    {
        book_no: 111,
        ship_class: '夕張型',
        ship_class_index: 1,
        ship_type: '軽巡洋艦',
        ship_name: '夕張',
        variation_num: 6,
        
    },
    {
        book_no: 112,
        ship_class: '祥鳳型',
        ship_class_index: 2,
        ship_type: '軽空母',
        ship_name: '瑞鳳',
        variation_num: 3,
        
    },
    {
        book_no: 113,
        ship_class: '祥鳳型',
        ship_class_index: 2,
        ship_type: '軽空母',
        ship_name: '瑞鳳改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 114,
        ship_class: '球磨型',
        ship_class_index: 4,
        ship_type: '重雷装巡洋艦',
        ship_name: '大井改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 115,
        ship_class: '球磨型',
        ship_class_index: 3,
        ship_type: '重雷装巡洋艦',
        ship_name: '北上改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 116,
        ship_class: '最上型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '三隈',
        variation_num: 3,
        # 2016-09-15：4隻追加（最上、三隈、鈴谷、熊野）
        implemented_at: '2016-09-15T07:00:00+09:00',
    },
    {
        book_no: 117,
        ship_class: '最上型',
        ship_class_index: 2,
        ship_type: '航空巡洋艦',
        ship_name: '三隈改',
        variation_num: 3,
        remodel_level: 1,
        # 2016-09-15：4隻追加（最上、三隈、鈴谷、熊野）
        implemented_at: '2016-09-15T07:00:00+09:00',
    },
    {
        book_no: 118,
        ship_class: '陽炎型',
        ship_class_index: 7,
        ship_type: '駆逐艦',
        ship_name: '初風',
        variation_num: 6,
        
    },
    {
        book_no: 119,
        ship_class: '陽炎型',
        ship_class_index: 18,
        ship_type: '駆逐艦',
        ship_name: '舞風',
        variation_num: 6,
        
    },
    {
        book_no: 120,
        ship_class: '青葉型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '衣笠',
        variation_num: 6,
        
    },
    {
        book_no: 121,
        ship_class: '千歳型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '千歳航改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 122,
        ship_class: '千歳型',
        ship_class_index: 2,
        ship_type: '軽空母',
        ship_name: '千代田航改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 123,
        ship_class: '巡潜乙型',
        ship_class_index: 3,
        ship_type: '潜水艦',
        ship_name: '伊19',
        variation_num: 6,
        
    },
    {
        book_no: 124,
        ship_class: '最上型',
        ship_class_index: 3,
        ship_type: '重巡洋艦',
        ship_name: '鈴谷',
        variation_num: 3,
        # 2016-09-15：4隻追加（最上、三隈、鈴谷、熊野）
        implemented_at: '2016-09-15T07:00:00+09:00',
    },
    {
        book_no: 125,
        ship_class: '最上型',
        ship_class_index: 4,
        ship_type: '重巡洋艦',
        ship_name: '熊野',
        variation_num: 3,
        # 2016-09-15：4隻追加（最上、三隈、鈴谷、熊野）
        implemented_at: '2016-09-15T07:00:00+09:00',
    },
    {
        book_no: 126,
        ship_class: '海大VI型',
        ship_class_index: 1,
        ship_type: '潜水艦',
        ship_name: '伊168',
        variation_num: 6,
        
    },
    {
        book_no: 127,
        ship_class: '巡潜乙型改二',
        ship_class_index: 3,
        ship_type: '潜水艦',
        ship_name: '伊58',
        variation_num: 6,
        
    },
    {
        book_no: 128,
        ship_class: '巡潜3型',
        ship_class_index: 2,
        ship_type: '潜水艦',
        ship_name: '伊8',
        variation_num: 6,
        
    },
    {
        book_no: 129,
        ship_class: '最上型',
        ship_class_index: 3,
        ship_type: '航空巡洋艦',
        ship_name: '鈴谷改',
        variation_num: 3,
        remodel_level: 1,
        # 2016-09-15：4隻追加（最上、三隈、鈴谷、熊野）
        implemented_at: '2016-09-15T07:00:00+09:00',
    },
    {
        book_no: 130,
        ship_class: '最上型',
        ship_class_index: 4,
        ship_type: '航空巡洋艦',
        ship_name: '熊野改',
        variation_num: 3,
        remodel_level: 1,
        # 2016-09-15：4隻追加（最上、三隈、鈴谷、熊野）
        implemented_at: '2016-09-15T07:00:00+09:00',
    },
    {
        book_no: 131,
        ship_class: '大和型',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: '大和',
        variation_num: 3,
        
    },
    {
        book_no: 132,
        ship_class: '陽炎型',
        ship_class_index: 19,
        ship_type: '駆逐艦',
        ship_name: '秋雲',
        variation_num: 6,
        
    },
    {
        book_no: 133,
        ship_class: '夕雲型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '夕雲',
        variation_num: 6,
        
    },
    {
        book_no: 134,
        ship_class: '夕雲型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '巻雲',
        variation_num: 6,
        
    },
    {
        book_no: 135,
        ship_class: '夕雲型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '長波',
        variation_num: 6,
        
    },
    {
        book_no: 136,
        ship_class: '大和型',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: '大和改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 137,
        ship_class: '阿賀野型',
        ship_class_index: 1,
        ship_type: '軽巡洋艦',
        ship_name: '阿賀野',
        variation_num: 6,
        
    },
    {
        book_no: 138,
        ship_class: '阿賀野型',
        ship_class_index: 2,
        ship_type: '軽巡洋艦',
        ship_name: '能代',
        variation_num: 6,
        
    },
    {
        book_no: 139,
        ship_class: '阿賀野型',
        ship_class_index: 3,
        ship_type: '軽巡洋艦',
        ship_name: '矢矧',
        variation_num: 6,
        
    },
    {
        book_no: 140,
        ship_class: '阿賀野型',
        ship_class_index: 4,
        ship_type: '軽巡洋艦',
        ship_name: '酒匂',
        variation_num: 6,
        
    },
    {
        book_no: 141,
        ship_class: '長良型',
        ship_class_index: 2,
        ship_type: '軽巡洋艦',
        ship_name: '五十鈴改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 142,
        ship_class: '青葉型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '衣笠改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 143,
        ship_class: '大和型',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: '武蔵',
        variation_num: 3,
        
    },
    {
        book_no: 144,
        ship_class: '白露型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '夕立改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 145,
        ship_class: '白露型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '時雨改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 146,
        ship_class: '球磨型',
        ship_class_index: 5,
        ship_type: '重雷装巡洋艦',
        ship_name: '木曾改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 147,
        ship_class: '暁型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: 'Верный',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 148,
        ship_class: '大和型',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: '武蔵改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 149,
        ship_class: '金剛型',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: '金剛改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 150,
        ship_class: '金剛型',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: '比叡改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 151,
        ship_class: '金剛型',
        ship_class_index: 3,
        ship_type: '戦艦',
        ship_name: '榛名改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 152,
        ship_class: '金剛型',
        ship_class_index: 4,
        ship_type: '戦艦',
        ship_name: '霧島改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 153,
        ship_class: '大鳳型',
        ship_class_index: 1,
        ship_type: '装甲空母',
        ship_name: '大鳳',
        variation_num: 3,
        
    },
    {
        book_no: 154,
        ship_class: '香取型',
        ship_class_index: 1,
        ship_type: '練習巡洋艦',
        ship_name: '香取',
        variation_num: 6,
        
    },
    {
        book_no: 155,
        ship_class: '潜特型',
        ship_class_index: 2,
        ship_type: '潜水空母',
        ship_name: '伊401',
        variation_num: 6,
        
    },
    {
        book_no: 156,
        ship_class: '大鳳型',
        ship_class_index: 1,
        ship_type: '装甲空母',
        ship_name: '大鳳改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 157,
        ship_class: '龍驤型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '龍驤改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 158,
        ship_class: '川内型',
        ship_class_index: 1,
        ship_type: '軽巡洋艦',
        ship_name: '川内改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 159,
        ship_class: '川内型',
        ship_class_index: 2,
        ship_type: '軽巡洋艦',
        ship_name: '神通改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 160,
        ship_class: '川内型',
        ship_class_index: 3,
        ship_type: '軽巡洋艦',
        ship_name: '那珂改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 161,
        ship_class: '特種船丙型',
        ship_class_index: 1,
        ship_type: '揚陸艦',
        ship_name: 'あきつ丸',
        variation_num: 3,
        
    },
    {
        book_no: 163,
        ship_class: '三式潜航輸送艇',
        ship_class_index: 1,
        ship_type: '潜水艦',
        ship_name: 'まるゆ',
        variation_num: 6,
        
    },
    {
        book_no: 164,
        ship_class: '睦月型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '弥生',
        variation_num: 6,
        
    },
    {
        book_no: 165,
        ship_class: '睦月型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '卯月',
        variation_num: 6,
        
    },
    {
        book_no: 166,
        ship_class: '特種船丙型',
        ship_class_index: 1,
        ship_type: '揚陸艦',
        ship_name: 'あきつ丸改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 167,
        ship_class: '陽炎型',
        ship_class_index: 12,
        ship_type: '駆逐艦',
        ship_name: '磯風',
        variation_num: 6,
        
    },
    {
        book_no: 168,
        ship_class: '陽炎型',
        ship_class_index: 11,
        ship_type: '駆逐艦',
        ship_name: '浦風',
        variation_num: 6,
        
    },
    {
        book_no: 169,
        ship_class: '陽炎型',
        ship_class_index: 14,
        ship_type: '駆逐艦',
        ship_name: '谷風',
        variation_num: 6,
        
    },
    {
        book_no: 170,
        ship_class: '陽炎型',
        ship_class_index: 13,
        ship_type: '駆逐艦',
        ship_name: '浜風',
        variation_num: 6,
        
    },
    {
        book_no: 171,
        ship_class: 'Bismarck級',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: 'Bismarck',
        variation_num: 3,
        
    },
    {
        book_no: 172,
        ship_class: 'Bismarck級',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: 'Bismarck改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 173,
        ship_class: 'Bismarck級',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: 'Bismarck zwei',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 174,
        ship_class: 'Z1型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: 'Z1',
        variation_num: 6,
        
    },
    {
        book_no: 175,
        ship_class: 'Z1型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: 'Z3',
        variation_num: 6,
        
    },
    {
        book_no: 176,
        ship_class: 'Admiral Hipper級',
        ship_class_index: 3,
        ship_type: '重巡洋艦',
        ship_name: 'Prinz Eugen',
        variation_num: 3,
        
    },
    {
        book_no: 177,
        ship_class: 'Admiral Hipper級',
        ship_class_index: 3,
        ship_type: '重巡洋艦',
        ship_name: 'Prinz Eugen改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 178,
        ship_class: 'Bismarck級',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: 'Bismarck drei',
        variation_num: 3,
        remodel_level: 3,
        
    },
    {
        book_no: 179,
        ship_class: 'Z1型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: 'Z1 zwei',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 180,
        ship_class: 'Z1型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: 'Z3 zwei',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 181,
        ship_class: '陽炎型',
        ship_class_index: 9,
        ship_type: '駆逐艦',
        ship_name: '天津風',
        variation_num: 6,
        
    },
    {
        book_no: 182,
        ship_class: '明石型',
        ship_class_index: 1,
        ship_type: '工作艦',
        ship_name: '明石',
        variation_num: 3,
        
    },
    {
        book_no: 183,
        ship_class: '大淀型',
        ship_class_index: 1,
        ship_type: '軽巡洋艦',
        ship_name: '大淀',
        variation_num: 6,
        
    },
    {
        book_no: 184,
        ship_class: '大鯨型',
        ship_class_index: 1,
        ship_type: '潜水母艦',
        ship_name: '大鯨',
        variation_num: 3,
        
    },
    {
        book_no: 185,
        ship_class: '龍鳳型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '龍鳳',
        variation_num: 3,
        
    },
    {
        book_no: 186,
        ship_class: '陽炎型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '時津風',
        variation_num: 6,
        
    },
    {
        book_no: 187,
        ship_class: '明石型',
        ship_class_index: 1,
        ship_type: '工作艦',
        ship_name: '明石改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 188,
        ship_class: '利根型',
        ship_class_index: 1,
        ship_type: '航空巡洋艦',
        ship_name: '利根改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 189,
        ship_class: '利根型',
        ship_class_index: 2,
        ship_type: '航空巡洋艦',
        ship_name: '筑摩改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 190,
        ship_class: '龍鳳型',
        ship_class_index: 1,
        ship_type: '軽空母',
        ship_name: '龍鳳改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 191,
        ship_class: '妙高型',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: '妙高改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 192,
        ship_class: '妙高型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '那智改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 193,
        ship_class: '妙高型',
        ship_class_index: 3,
        ship_type: '重巡洋艦',
        ship_name: '足柄改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 194,
        ship_class: '妙高型',
        ship_class_index: 4,
        ship_type: '重巡洋艦',
        ship_name: '羽黒改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 195,
        ship_class: '綾波型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '綾波改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 196,
        ship_class: '飛龍型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '飛龍改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 197,
        ship_class: '蒼龍型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '蒼龍改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 199,
        ship_class: '朝潮型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '大潮改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 200,
        ship_class: '長良型',
        ship_class_index: 6,
        ship_type: '軽巡洋艦',
        ship_name: '阿武隈改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 201,
        ship_class: '雲龍型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '雲龍',
        variation_num: 3,
        
    },
    {
        book_no: 202,
        ship_class: '雲龍型',
        ship_class_index: 2,
        ship_type: '正規空母',
        ship_name: '天城',
        variation_num: 3,
        
    },
    {
        book_no: 203,
        ship_class: '雲龍型',
        ship_class_index: 3,
        ship_type: '正規空母',
        ship_name: '葛城',
        variation_num: 3,
        
    },
    {
        book_no: 204,
        ship_class: '初春型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '初春改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 205,
        ship_class: '白露型',
        ship_class_index: 5,
        ship_type: '駆逐艦',
        ship_name: '春雨',
        variation_num: 6,
        
    },
    {
        book_no: 206,
        ship_class: '雲龍型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '雲龍改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 207,
        ship_class: '綾波型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '潮改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 208,
        ship_class: '飛鷹型',
        ship_class_index: 2,
        ship_type: '軽空母',
        ship_name: '隼鷹改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 209,
        ship_class: '夕雲型',
        ship_class_index: 17,
        ship_type: '駆逐艦',
        ship_name: '早霜',
        variation_num: 6,
        
    },
    {
        book_no: 210,
        ship_class: '夕雲型',
        ship_class_index: 19,
        ship_type: '駆逐艦',
        ship_name: '清霜',
        variation_num: 6,
        
    },
    {
        book_no: 211,
        ship_class: '扶桑型',
        ship_class_index: 1,
        ship_type: '航空戦艦',
        ship_name: '扶桑改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 212,
        ship_class: '扶桑型',
        ship_class_index: 2,
        ship_type: '航空戦艦',
        ship_name: '山城改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 213,
        ship_class: '朝潮型',
        ship_class_index: 5,
        ship_type: '駆逐艦',
        ship_name: '朝雲',
        variation_num: 6,
        
    },
    {
        book_no: 214,
        ship_class: '朝潮型',
        ship_class_index: 6,
        ship_type: '駆逐艦',
        ship_name: '山雲',
        variation_num: 6,
        
    },
    {
        book_no: 215,
        ship_class: '陽炎型',
        ship_class_index: 15,
        ship_type: '駆逐艦',
        ship_name: '野分',
        variation_num: 6,
        
    },
    {
        book_no: 216,
        ship_class: '古鷹型',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: '古鷹改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 217,
        ship_class: '古鷹型',
        ship_class_index: 2,
        ship_type: '重巡洋艦',
        ship_name: '加古改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 218,
        ship_class: '睦月型',
        ship_class_index: 5,
        ship_type: '駆逐艦',
        ship_name: '皐月改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 219,
        ship_class: '初春型',
        ship_class_index: 4,
        ship_type: '駆逐艦',
        ship_name: '初霜改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 220,
        ship_class: '吹雪型',
        ship_class_index: 5,
        ship_type: '駆逐艦',
        ship_name: '叢雲改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 221,
        ship_class: '秋月型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '秋月',
        variation_num: 6,
        # リリースと同時に実装
        implemented_at: '2016-04-26T07:00:00+09:00',
    },
    {
        book_no: 222,
        ship_class: '秋月型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '照月',
        variation_num: 6,
        
    },
    {
        book_no: 223,
        ship_class: '秋月型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '初月',
        variation_num: 6,
        
    },
    {
        book_no: 224,
        ship_class: '夕雲型',
        ship_class_index: 6,
        ship_type: '駆逐艦',
        ship_name: '高波',
        variation_num: 6,
        
    },
    {
        book_no: 225,
        ship_class: '夕雲型',
        ship_class_index: 16,
        ship_type: '駆逐艦',
        ship_name: '朝霜',
        variation_num: 6,
        
    },
    {
        book_no: 226,
        ship_class: '吹雪型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '吹雪改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 227,
        ship_class: '高雄型',
        ship_class_index: 4,
        ship_type: '重巡洋艦',
        ship_name: '鳥海改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 228,
        ship_class: '高雄型',
        ship_class_index: 3,
        ship_type: '重巡洋艦',
        ship_name: '摩耶改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 229,
        ship_class: '雲龍型',
        ship_class_index: 2,
        ship_type: '正規空母',
        ship_name: '天城改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 230,
        ship_class: '雲龍型',
        ship_class_index: 3,
        ship_type: '正規空母',
        ship_name: '葛城改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 231,
        ship_class: 'UボートIXC型',
        ship_class_index: 1,
        ship_type: '潜水艦',
        ship_name: 'U-511',
        variation_num: 6,
        
    },
    {
        book_no: 232,
        ship_class: 'Graf Zeppelin級',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: 'Graf Zeppelin',
        variation_num: 6,
        
    },
    {
        book_no: 234,
        ship_class: '睦月型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '睦月改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 235,
        ship_class: '睦月型',
        ship_class_index: 2,
        ship_type: '駆逐艦',
        ship_name: '如月改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 236,
        ship_class: '呂号潜水艦',
        ship_class_index: 1,
        ship_type: '潜水艦',
        ship_name: '呂500',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 237,
        ship_class: '暁型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '暁改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 239,
        ship_class: 'Queen Elizabeth級',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: 'Warspite',
        variation_num: 6,
        
    },
    {
        book_no: 240,
        ship_class: 'Iowa級',
        ship_class_index: 1,
        ship_type: '戦艦',
        ship_name: 'Iowa',
        variation_num: 6,
        
    },
    {
        book_no: 241,
        ship_class: 'V.Veneto級',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: 'Littorio',
        variation_num: 3,
        
    },
    {
        book_no: 242,
        ship_class: 'V.Veneto級',
        ship_class_index: 4,
        ship_type: '戦艦',
        ship_name: 'Roma',
        variation_num: 3,
        
    },
    {
        book_no: 243,
        ship_class: 'Maestrale級',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: 'Libeccio',
        variation_num: 6,
        
    },
    {
        book_no: 244,
        ship_class: 'Aquila級',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: 'Aquila',
        variation_num: 6,
        
    },
    {
        book_no: 245,
        ship_class: '秋津洲型',
        ship_class_index: 1,
        ship_type: '水上機母艦',
        ship_name: '秋津洲',
        variation_num: 3,
        
    },
    {
        book_no: 246,
        ship_class: 'V.Veneto級',
        ship_class_index: 2,
        ship_type: '戦艦',
        ship_name: 'Italia',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 247,
        ship_class: 'V.Veneto級',
        ship_class_index: 4,
        ship_type: '戦艦',
        ship_name: 'Roma改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 248,
        ship_class: 'Zara級',
        ship_class_index: 1,
        ship_type: '重巡洋艦',
        ship_name: 'Zara',
        variation_num: 6,
        
    },
    {
        book_no: 249,
        ship_class: 'Zara級',
        ship_class_index: 3,
        ship_type: '重巡洋艦',
        ship_name: 'Pola',
        variation_num: 6,
        
    },
    {
        book_no: 250,
        ship_class: '秋津洲型',
        ship_class_index: 1,
        ship_type: '水上機母艦',
        ship_name: '秋津洲改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 251,
        ship_class: '瑞穂型',
        ship_class_index: 1,
        ship_type: '水上機母艦',
        ship_name: '瑞穂',
        variation_num: 6,
        
    },
    {
        book_no: 252,
        ship_class: '夕雲型',
        ship_class_index: 14,
        ship_type: '駆逐艦',
        ship_name: '沖波',
        variation_num: 6,
        
    },
    {
        book_no: 253,
        ship_class: '夕雲型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '風雲',
        variation_num: 6,
        
    },
    {
        book_no: 254,
        ship_class: '陽炎型',
        ship_class_index: 16,
        ship_type: '駆逐艦',
        ship_name: '嵐',
        variation_num: 6,
        
    },
    {
        book_no: 255,
        ship_class: '陽炎型',
        ship_class_index: 17,
        ship_type: '駆逐艦',
        ship_name: '萩風',
        variation_num: 6,
        
    },
    {
        book_no: 256,
        ship_class: '陽炎型',
        ship_class_index: 14,
        ship_type: '駆逐艦',
        ship_name: '親潮',
        variation_num: 6,
        
    },
    {
        book_no: 258,
        ship_class: '白露型',
        ship_class_index: 7,
        ship_type: '駆逐艦',
        ship_name: '海風',
        variation_num: 6,
        
    },
    {
        book_no: 259,
        ship_class: '白露型',
        ship_class_index: 9,
        ship_type: '駆逐艦',
        ship_name: '江風',
        variation_num: 6,
        
    },
    {
        book_no: 260,
        ship_class: '改風早型',
        ship_class_index: 1,
        ship_type: '補給艦',
        ship_name: '速吸',
        variation_num: 6,
        
    },
    {
        book_no: 261,
        ship_class: '翔鶴型',
        ship_class_index: 1,
        ship_type: '正規空母',
        ship_name: '翔鶴改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 262,
        ship_class: '翔鶴型',
        ship_class_index: 2,
        ship_type: '正規空母',
        ship_name: '瑞鶴改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 263,
        ship_class: '朝潮型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '朝潮改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 264,
        ship_class: '朝潮型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '霞改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 265,
        ship_class: '香取型',
        ship_class_index: 2,
        ship_type: '練習巡洋艦',
        ship_name: '鹿島',
        variation_num: 6,
        
    },
    {
        book_no: 266,
        ship_class: '翔鶴型',
        ship_class_index: 1,
        ship_type: '装甲空母',
        ship_name: '翔鶴改二甲',
        variation_num: 3,
        remodel_level: 3,
        
    },
    {
        book_no: 267,
        ship_class: '翔鶴型',
        ship_class_index: 2,
        ship_type: '装甲空母',
        ship_name: '瑞鶴改二甲',
        variation_num: 3,
        remodel_level: 3,
        
    },
    {
        book_no: 268,
        ship_class: '朝潮型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '朝潮改二丁',
        variation_num: 3,
        remodel_level: 3,
        
    },
    {
        book_no: 269,
        ship_class: '白露型',
        ship_class_index: 9,
        ship_type: '駆逐艦',
        ship_name: '江風改二',
        variation_num: 3,
        remodel_level: 2,
        
    },
    {
        book_no: 270,
        ship_class: '朝潮型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '霞改二乙',
        variation_num: 3,
        remodel_level: 3,
        
    },
    {
        book_no: 271,
        ship_class: '神風型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '神風',
        variation_num: 3,
        
    },
    {
        book_no: 273,
        ship_class: '神風型',
        ship_class_index: 3,
        ship_type: '駆逐艦',
        ship_name: '春風',
        variation_num: 6,
        
    },
    {
        book_no: 276,
        ship_class: '神風型',
        ship_class_index: 1,
        ship_type: '駆逐艦',
        ship_name: '神風改',
        variation_num: 3,
        remodel_level: 1,
        
    },
    {
        book_no: 281,
        ship_class: '睦月型',
        ship_class_index: 6,
        ship_type: '駆逐艦',
        ship_name: '水無月',
        variation_num: 6,
        
    },
    {
        book_no: 283,
        ship_class: '巡潜乙型',
        ship_class_index: 7,
        ship_type: '潜水艦',
        ship_name: '伊26',
        variation_num: 6,
        
    },
    {
        book_no: 286,
        ship_class: '吹雪型',
        ship_class_index: 10,
        ship_type: '駆逐艦',
        ship_name: '浦波',
        variation_num: 6,
    },
]

ship_masters.each do |ship_master|
  ShipMaster.where(book_no: ship_master[:book_no]).first_or_initialize.update(ship_master)
end
