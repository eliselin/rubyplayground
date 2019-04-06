students_age_list =[30,20,50,44,32,22,35]
student_age_total=0
student_count=0
student_age_max=-9999999
student_age_min=99999999

students_age_list.each do |age|
  student_age_total +=age
  student_count +=1
end
student_age_average = student_age_total/student_count*1.1

students_age_list.each do |age|
  if student_age_max <= age 
  student_age_max = age
  end
end

students_age_list.each do |age|
  if student_age_min >= age 
  student_age_min = age
  end
end

puts "The average age in the class is #{student_age_average}\nThe youngest studnet is #{student_age_min}\nThe oldest student is #{student_age_max}"