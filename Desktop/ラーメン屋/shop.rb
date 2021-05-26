class Shop
  attr_reader :items

  def initialize(name:, items:)
    @name = name
    @items = items
  end

  def display
    puts "ようこそ #{@name}へ"
    puts "当店のメニューはこちらです"
    #**************を表示させる
    puts "*" * 30
    #each.with_index(1)は1：と表示させる
    @items.each.with_index(1) do |item, index|
      #ljust表示一緒の列にする
      puts "#{index.to_s.rjust(2)}. #{item.name.mb_ljust(24)}: #{item.price.to_s.rjust(4)}円"
    end
    puts "*" * 30
  end

  def sell(user, item)
    puts "#{item.name}ですね。#{item.price}円になります"
    puts "#{user.money}円頂戴します"
    puts "お釣りは#{user.money - item.price}円頂戴します"
    puts "ゆっくり#{item.name}をお楽しみに下さい"
  end
end
