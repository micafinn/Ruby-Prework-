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

puts banana.final_price
puts oj.final_price
puts rice.final_price
puts vacuum.final_price
puts anchovies.final_price
