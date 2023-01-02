require './create_student'
require './create_teacher'

def create_person
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
  option = gets.chomp
  case option
  when '1'
    create_student
  when '2'
    create_teacher
  else
    puts 'Invalid input!'
  end
end
