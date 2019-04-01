=begin 
Exercise
Modify the Product class you wrote earlier to use instance variables to track name and quantity_in_stock
Add writer methods for name and quantity_in_stock
Write code that creates two different products, sets the values, and prints out the information as before
Solution
=end

class Product 

    def name
        return @name
    end

    def name=(new_name)
        @name=new_name
    end

    def quantity_in_stock
        return @quantity  
    end

    def quantity_in_stock=(new_quantity)
        @quantity=new_quantity
    end

    def available?
        return @quantity > 0
    end

end

dr_pepper = Product.new
dr_pepper.new_name = "Dr.Pepper"
dr_pepper.quantity_in_stock = 0

cock = Product.new
cock.name = "Cocacola"
cock.quantity_in_stock = 5

puts "#{dr_pepper.name}: #{dr_pepper.available? ? 'now' : 'not'} available"
puts "#{cock.name}: #{cock.available? ? 'now' : 'not'} available"