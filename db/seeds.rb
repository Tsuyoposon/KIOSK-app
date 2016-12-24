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
:name => "店舗１",
:image => Rails.root.join("db/fixtures/shop_1.jpg").open
)
