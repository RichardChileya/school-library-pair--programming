require './app'

def create_student
  print 'Age:'
  age = gets.chomp

  print 'Has parent permission? [Y/N]:'
  parent_permission = gets.chomp.to_s.downcase == 'y'

  print 'Name:'
  name = gets.chomp

  student = Student.new(age, name, parent_permission: parent_permission)
  @people.push(student)
  puts 'Student created.'
end
