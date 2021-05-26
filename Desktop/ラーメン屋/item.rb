require "csv"

class Item
  #インスタンス変数を読み書き出来るメソッド
  attr_reader :name, :price
  
  #initialize」メソッドは自動的に呼び出されるメソッド
  def initialize(name:, price:)
    @name = name
    @price = price
  end

  def self.import(path:)
    CSV.read(path, headers: true).map do |row|
      Item.new(
        name: row["name"],
        price: row["price"].to_i
      )
    end

  end

end
