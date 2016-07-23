class ShoppingCart
  def initialize
      @total_items = []
  end

  def add_item(item)
      @total_items << item
  end

  def checkout
    checkout_bill = 0
    @total_items.each do |each| checkout_bill += each.final_price 
    end
      if @total_items.count > 5
        checkout_bill = checkout_bill * (0.90)
      else
      checkout_bill 
      end
  puts "Total amount due is #{checkout_bill}"
  end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def final_price
      final_price = @price
  end
end

class Houseware < Item
  def final_price
      if @price > 100 
        final_price = @price * (0.95) 
      else final_price = @price
      end
  end
end

class Fruit < Item
  def final_price
        time = Time.now
        if time.saturday? || time.sunday? 
          final_price = @price * (0.90) 
        else final_price = @price
        end
  end
end

banana = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

my_shopping_cart = ShoppingCart.new


my_shopping_cart.add_item(oj)
my_shopping_cart.add_item(oj)
my_shopping_cart.add_item(oj)
my_shopping_cart.add_item(oj)
my_shopping_cart.add_item(oj)
my_shopping_cart.add_item(oj)
my_shopping_cart.add_item(oj)

my_shopping_cart.checkout


