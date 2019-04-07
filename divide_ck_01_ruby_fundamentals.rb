 order = [13.5, 14.0, 15.0, 3]
  people = 3

def divide_check(order_items,number_of_people)
  unless number_of_people > 0
    raise ArgumentError, 'You must provide a collection and a positive numeric argument to this method.'
  end
  total = order_items.sum.to_f
  average = total / number_of_people
  return "Your order will cost$ #{average} per person"
end

divide_check(order,3)