class StudentAccountGenerator 
  @@student_names = Array.new
  @@student_ids = Array.new
  @@student_emails = Array.new
  @@num_student = 5

  def initialize()
    # Main execution
    @@num_student.times do 
      ask_question()
    end

    print_all()
  end

  def get_uuid()
    # Attemp to generate an id
    done = false
    while !done
      id = rand(111111..999999).to_s
      if !@@student_ids.include? id
        return id
      end
    end
  end 

  def ask_question()
    # Ask
    puts "Please enter first name:"
    first_name = gets.chomp.upcase
    puts "Please enter last name:"
    last_name = gets.chomp.upcase
    student_id = get_uuid()
    student_email = "#{first_name}#{last_name}#{student_id[-3..-1]}@adadevelopersacademy.org"
    # Push
    @@student_names.push(first_name + " " + last_name)
    @@student_ids.push(student_id)
    @@student_emails.push(student_email) 
  end

  def print_all()
    for i in 0..@@num_student - 1
      # Print
      puts "#{@@student_names[i]}, #{@@student_ids[i]}, #{@@student_emails[i]}"
    end
  end
end

sag = StudentAccountGenerator.new









 

