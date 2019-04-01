=begin 

Modify the Product class you wrote earlier to use instance variables to track name and quantity_in_stock
Add writer methods for name and quantity_in_stock
Write code that creates two different products, sets the values, and prints out the information as before

Add a constructor to the Product class, and use it to set the initial values of name and quantity_in_stock
Add a third instance variable, quantity_sold. This variable should be set to 0 in the constructor, and should have a reader but not a writer.
Add a sell method, which takes one parameter amount, which will reduce quantity_in_stock by amount and increase quantity_sold by amount.
Don't worry about error handling for this method yet
Write code to use your new methods

=end

class Product 

    def initialize(name, quantity_in_stock)

        @name = name
        @quantity_in_stock = quantity_in_stock
        @quantity_sold = 0
    end 

    def name
      return @name
    end

    def name=(new_name)
      @name = new_name
    end

    def quantity_in_stock
      return @quantity_in_stock 
    end

    def quantity_in_stock=(new_quantity)
      @quantity_in_stock = new_quantity
    end

    def quantity_sold
      return @quantity_sold
    end

    def sell(amount)
      @quantity_in_stock -= amount
      @quantity_sold += amount
    end

    def available?
      return @quantity_in_stock  > 0
    end

end


dr_pepper = Product.new("Dr.Pepper", 50)
dr_pepper.sell(3)
puts "#{dr_pepper.name}: #{dr_pepper.quantity_sold} sold, #{dr_pepper.quantity_in_stock} in stock"


cock = Product.new("Cocacola", 5)
cock.sell(2)
puts "#{cock.name}: #{cock.quantity_sold} sold, #{cock.quantity_in_stock} in stock"