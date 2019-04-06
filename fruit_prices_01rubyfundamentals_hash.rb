fruit_prices = {
  apple: 2.15,
  pear: 3.02,
  banana: 1.15,
  pineapple: 4.5
}

puts "#{fruit_prices.values}"
# => { apple: 2.15, pear: 3.02 }

puts fruit_prices.length
# => 2

fruit_prices.each do |fruit, price|
  puts "#{fruit} costs $#{price}"
end

#Does it make sense to access the "last" key/value pair in a hash? "No"

#What data type do you get back from my_hash.keys?

puts "#{fruit_prices.values.class}"

#How would you get a list of fruits costing less than $3.00?
fruit_prices_less_than_three=Array.new

fruit_prices.each do |fruit, price|
  if price < 3.00
  fruit_prices_less_than_three.push(fruit)
  end
end
puts "#{fruit_prices_less_than_three}"