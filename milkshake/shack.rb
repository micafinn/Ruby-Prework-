
class MilkShake
  def initialize
    @base_price = 3
    @ingredients = []
  end

  def price_of_milkshake
    total_price_of_milkshake = @base_price
    @ingredients.each { |ingredient|
      total_price_of_milkshake += ingredient.price
    }
  total_price_of_milkshake
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end
end


class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

chocolate_pineapple_express_milkshake = MilkShake.new

pineapple = Ingredient.new("Pineapple", 2)
chocolate = Ingredient.new("Chocolate", 1)


chocolate_pineapple_express_milkshake.add_ingredient(pineapple)
chocolate_pineapple_express_milkshake.add_ingredient(chocolate)

puts chocolate_pineapple_express_milkshake.price_of_milkshake