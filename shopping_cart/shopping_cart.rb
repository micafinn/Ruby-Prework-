
class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def price_of_all_items
    total_price_of_all_items = 0

    @items.each do |item|
      total_price_of_all_items += item.price_of_item
    end

    if @items.count > 5
      total_price_of_all_items -= (total_price_of_all_items * 0.1)
    end

    puts "\nYour total today is #{total_price_of_all_items}. Have a beautiful day!"
  end
end

class Item
  # attr_reader :name :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def price_of_item
    total_price_of_item = @price

    total_price_of_item
  end
end

class Houseware < Item
  def price_of_item
    if @price > 100
      total_price_of_item = @price - (@price * 0.05)
    
    else
      total_price_of_item = price
    end

    total_price_of_item
  end
end

class Fruit < Item
  def price_of_item
    time = Time.new

    if time.saturday? || time.sunday?
      total_price_of_item = @price - (@price * 0.1)

    else
      total_price_of_item = price 
    end

    total_price_of_item
  end
end

banana = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

anthonys_cart = ShoppingCart.new

anthonys_cart.add_item(oj)
anthonys_cart.add_item(oj)
anthonys_cart.add_item(rice)
anthonys_cart.add_item(banana)
anthonys_cart.add_item(vacuum)
anthonys_cart.add_item(anchovies)
anthonys_cart.price_of_all_items

