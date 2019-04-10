=begin 

Practice map on arrays
Solve this first using an each loop, then with the person next to you, refactor it to use map.

Given the following array greetings, assign to a new variable loud_greetings a new array.
In the new array, each element should be like the original array, but all in upcase (CAPITAL) letters.
greetings = ['hello', 'howdy', 'hey there']

# loud_greetings => ["HELLO", "HOWDY", "HEY THERE"]
=end

greetings = ['hello', 'howdy', 'hey there']

loud_greetings = greetings.map do|greeting|

  greeting.upcase
    
end

puts "#{loud_greetings}"

=begin
Practice map on hashes
Solve this first using an each loop, then refactoring it to use map.

Given the following hash students, assign to a new variable a new array formatted_names. In the new array, 
each element should be hash with the same key, but the value in upcase (CAPITAL) letters.
students = {
  student_a: 'Dasher',
  student_b: 'Dancer',
  student_c: 'Prancer'
}

# formatted_names => [{:student_a=>"DASHER"}, {:student_b=>"DANCER"}, {:student_c=>"PRANCER"}]

=end

#using each method
students = {
  student_a: 'Dasher',
  student_b: 'Dancer',
  student_c: 'Prancer'
}
formatted_names=Hash.new
students.each do|key,value|

formatted_names[key]=value.upcase

end

puts "#{formatted_names}"

#using map method
students = {
  student_a: 'Dasher',
  student_b: 'Dancer',
  student_c: 'Prancer'
}
formatted_names = students.map do|key,value|
"#{key} => #{value.upcase}"
end
puts "#{formatted_names}"



