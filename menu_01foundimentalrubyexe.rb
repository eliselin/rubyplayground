require 'set'
#Copy the above data into a file, then write code to address the following prompts.
menu=[{:name => "beet salad", :price => 6.75, :allergens => ["nuts"]}]

#Add two more meals to our menu, including name, price and allergy information
menu.push({:name => "seafood salad", :price => 13.55, :allergens => ["shrimp"]},{:name => "padthai", :price => 15.55,:allergens => ["nuts","shrimp"]})

 # Write a loop to find the average price of a meal on our menu
total_price = 0
average_price = 0
  i=0
  for i in 0..menu.length-1
  total_price += menu[i][:price]
  end
average_price = total_price /menu.length
puts"The average price on the menu is $#{average_price}"
 
#Write code to produce a list of all the allergens in the menu
#How would you make sure there aren't duplicates? "set"
set_of_allergens = Set.new
i=0
for i in 0..menu.length-1
  for allergen in menu[i][:allergens]
    set_of_allergens.add(allergen)
  end
end
puts" #{set_of_allergens}"

#Write code that asks the user for the name of a meal and prints out the price
#What should your code do if the meal isn't found?

menu_price= Hash.new
i=0
for i in 0..menu.length-1
  menu_price[menu[i][:name]]= menu[i][:price] 
end

puts "what whould you like to order?"
customer_order = gets.chomp
  if menu_price[customer_order].nil?
    puts "The meal isn't found."
  else
    puts "The price for the item is $#{menu_price[customer_order]} "
  end