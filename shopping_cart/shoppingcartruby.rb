require 'date'

class ShoppingCart
	attr_reader :name
	attr_accessor :price

	def initialize
		@items = []
	end

	def add_item(item)
		@items << item
	end

	def total
		total = 0.0

		@items.each {|item| total += item.price}
		puts "total price: #{total}"

		if @items.length >= 5
			puts "Discount for purchasing more than 5 items: #{total*0.10}"
			puts "New total: #{total*0.90}"
		end
	end

	def print
		puts @items
	end
end

class Item 
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		@price
	end
end

	
class Housewares < Item

	def price
		if @price.to_i > 100
			@price * 0.95
		else
			@price
		end
	end
end

class Fruit < Item
	
	def price
		t = Time.now
 		if t.saturday? || t.sunday? 
			@price.to_i * 0.95
		else 
			@price
		end
	end

end

banana = Fruit.new("Banana", 10)
orange_juice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vaccum_cleaner = Housewares.new("Vaccum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

puts banana.price
puts orange_juice.price
puts rice.price
puts vaccum_cleaner.price
puts anchovies.price

shopping_cart = ShoppingCart.new
shopping_cart.add_item(banana)
shopping_cart.add_item(banana)
shopping_cart.add_item(orange_juice)
shopping_cart.add_item(rice)
shopping_cart.add_item(anchovies)
shopping_cart.add_item(vaccum_cleaner)

shopping_cart.print

shopping_cart.total

