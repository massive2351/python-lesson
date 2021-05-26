require_relative "item"
require_relative "shop"
require_relative "user"
require_relative "string"


SHOP_NAME = "ラーメン屋 りゅーたろう"
MONEY = 3000

#rbに配列で直接書くと管理がしづらいなのでcsvにまとめて読み込む
#csvは表になってるからデータとして扱いやすい

#商品
items = Item.import(path: "items.csv")
#店
shop = Shop.new(name: SHOP_NAME, items: items)
#ユーザー
user = User.new(money: MONEY)

shop.display
item = user.choice(shop.items)
shop.sell(user, item)







