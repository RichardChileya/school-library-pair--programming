require './app'

def create_teacher
  print 'Age:'
  age = gets.chomp

  print 'Name:'
  name = gets.chomp

  print 'Specialization:'
  specialization = gets.chomp

  teacher = Teacher.new(specialization, age, name)
  @people.push(teacher)
  puts 'Teacher created.'
end
