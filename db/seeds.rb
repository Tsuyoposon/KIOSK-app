User.create(
:id => 1,
:name => "ユーザ１"
)
User.create(
:id => 2,
:name => "ユーザ２"
)
User.create(
:id => 3,
:name => "ユーザ３"
)
User.create(
:id => 4,
:name => "ユーザ４"
)
User.create(
:id => 5,
:name => "ユーザ５"
)

Shop.create(
:id => 1,
:name => "CAFE RESTAURANT JARAN JARAN",
:body => "銀座KIHACHIをベースにしたオリジナル料理をお楽しみいただけます。
店名の「JARAN」は韓国・済州島に伝わる子守唄のかけ声で、「ねんねんころり」という意味です。
母の愛を持ってもてなし、音楽や絵画に癒される空間……そんな心の豊かなレストランを目指しています。",
:image => Rails.root.join("db/fixtures/shop_1.jpg").open
)
Shop.create(
:id => 2,
:name => "お食事処　喜し乃",
:body => "「町家で味わう癒しの時間」
お食事処　喜し乃では、京都町家をテーマにした懐かしい和の空間の中で、彩り豊かなお食事、お酒やドリンクをオリジナルの陶器でお楽しみいただけます。",
:image => Rails.root.join("db/fixtures/shop_2_2.jpg").open
)
Shop.create(
:id => 3,
:name => "遠野物語",
:body => "木のぬくもりを大切にした落ち着いた空間で、三陸の魚介や岩手の旬の素材にこだわった創作料理をリーズナブルにご堪能いただけます。
オツで心をくすぐるメニューはサラリーマンや女性客の皆様に人気です。",
:image => Rails.root.join("db/fixtures/shop_3.jpg").open
)
Shop.create(
:id => 4,
:name => "盛岡じゃじゃ麺　HOT JaJa",
:body => "盛岡三大麺のひとつ、「じゃじゃ麺」。
当店では自慢の自家製麺を使い、肉味噌は地元岩手の味噌を使ったこだわりのじゃじゃ麺をご堪能いただけます。",
:image => Rails.root.join("db/fixtures/shop_4.jpg").open
)
Shop.create(
:id => 5,
:name => "オンマーキッチン　イオン盛岡店",
:body => "「オンマーキッチン」とは、韓国語で「お母さんの台所」という意味。
オープンキッチンで、オンマー（お母さん）の手料理をご提供いたします。",
:image => Rails.root.join("db/fixtures/shop_5.jpg").open
)
Shop.create(
:id => 6,
:name => "未完成",
:body => "一番人気のパスタソースとクリームコロッケは自慢の自家製仕上げ。50年以上続く街の喫茶店、『未完成』です。
ランチやちょっとした軽食はもちろん、紅茶やコーヒー、スイーツも取り揃えております。
また、オープンカフェも備えており、ショッピングの合間の小さな一息にもご利用いただけます。
落ち着いた店内で、心穏やかなティータイムを。
ご来店を心よりお待ちしております。",
:image => Rails.root.join("db/fixtures/shop_6.jpg").open
)
Shop.create(
:id => 7,
:name => "レストラン安比高原",
:body => "岩手県の食材を使った料理を県内外のお客様に楽しんでいただけるレストランです。",
:image => Rails.root.join("db/fixtures/shop_7.jpg").open
)
Shop.create(
:id => 8,
:name => "カフェ・ポルトボヌール",
:body => "その日の食材に合わせたシェフお任せ料理と、10種類以上のスイーツ、ドイツ紅茶ブランド「ロンネフェルト社」の紅茶を提供するランチ＆スイーツのカフェ。",
:image => Rails.root.join("db/fixtures/shop_8.jpg").open
)
Shop.create(
:id => 9,
:name => "レストラングランヴヌール",
:body => "盛岡の街を一望できる「レストラングランヴヌール」は四季折々の食材を巧みに活かした洋食・和食の本格メニューでお客様をおもてなしいたします。
おひとり様でのお食事からご家族、ご友人同士のちょっとしたパーティー、そして大切な方のおもてなしに、心に残る各種記念日にご利用ください。
",
:image => Rails.root.join("db/fixtures/shop_9.jpg").open
)
Shop.create(
:id => 10,
:name => "Zip Zap",
:body => "カラオケ完備、歌って楽しめるカラオケパブ。
楽しく飲んで！楽しく歌おう！",
:image => Rails.root.join("db/fixtures/shop_10.jpg").open
)
Shop.create(
:id => 11,
:name => "大名どんどん",
:body => "10種の野菜と6種類の香辛料で香り付けした上質の油と3種の唐辛子で作る、ヘルシーなラー油を使用。
さっぱりとしたというわけでもなくしっかりとした味付けに野菜をたっぷり取れる満足度の高いメニューが豊富！！",
:image => Rails.root.join("db/fixtures/shop_11.jpg").open
)
Shop.create(
:id => 12,
:name => "すぺいん倶楽部",
:body => "昭和の４７年の開店以来、ファンを魅了し続けてきた『すぺいん倶楽部』は、耳も舌も肥えた大人をも納得させる音楽と料理、飲み物を提供。
 本格的な料理を楽しみ、お酒を嗜みながら耳を傾けるジャズは、格別なひとときを演出してくれる。",
:image => Rails.root.join("db/fixtures/shop_12.jpg").open
)
