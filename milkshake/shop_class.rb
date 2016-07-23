class Shakeshop
	def initialize
		@milkshakes = []
	end

	def add_milkshake(milkshake)
		@milkshakes << milkshake
	end

	def checkout
		total_order_price = 0
		@milkshakes.each do |milkshake|
			total_order_price += milkshake.price_of_milkshake
			end
		total_order_price
	end
end 

class MilkShake
  def initialize
    @base_price = 3
    @ingredients = []
  end

  def price_of_milkshake
    total_price_of_milkshake = @base_price
    @ingredients.each do |ingredient|
      total_price_of_milkshake += ingredient.price
    end
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
blueberry_chocolate_milkshake = MilkShake.new

pineapple = Ingredient.new("Pineapple", 2)
chocolate = Ingredient.new("Chocolate", 1)
blueberry = Ingredient.new("blueberry", 3)


chocolate_pineapple_express_milkshake.add_ingredient(pineapple)
chocolate_pineapple_express_milkshake.add_ingredient(chocolate)

blueberry_chocolate_milkshake.add_ingredient(blueberry)
blueberry_chocolate_milkshake.add_ingredient(chocolate)

first_order = Shakeshop.new
first_order.add_milkshake(chocolate_pineapple_express_milkshake)
first_order.add_milkshake(blueberry_chocolate_milkshake)

puts first_order.checkout
