require_relative './person'
require_relative './book'
require_relative './teacher'
require_relative './student'
require_relative './rental'
require 'date'

class App
  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def list_books
    if @books.empty?
      puts 'No book records.'
      return
    end
    @books.map do |book|
      puts "Title: \"#{book.title}\", Author: \"#{book.author}"
    end
  end

  def list_people
    if @people.empty?
      puts 'No person records.'
      return
    end
    @people.map do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

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

  def create_student
    print 'Age: '
    age = gets.chomp

    print 'Has parent permission? [Y/N]:'
    parent_permission = gets.chomp.upcase
    case parent_permission
    when 'Y'
      parent_permission = true
    when 'N'
      parent_permission = false
    end

    print 'Name: '
    name = gets.chomp

    student = Student.new(age, name, parent_permission: parent_permission)
    @people.push(student)
    puts 'Student created.'
  end

  def create_teacher
    print 'Age:'
    age = gets.chomp

    print 'Name:'
    name = gets.chomp

    print 'Specilization:'
    specialization = gets.chomp

    teacher = Teacher.new(specialization, age, name)
    @people.push(teacher)
    puts 'Teacher created.'
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)

    puts 'Book created.'
  end

  def create_rental
    if @books.size.zero?
      puts 'No book records.'
    elsif @people.size.zero?
      puts 'No person records.'
    else
      puts 'Select a book from the following list by number:'
      @books.each_with_index { |book, index| puts "#{index}) Book Title: #{book.title}, Author: #{book.author}" }
      rental_book = gets.chomp.to_i
      puts 'Select a person from the following list by number:'
      @people.each_with_index do |person, index|
        puts "#{index}) Name: #{person.name} Age: #{person.age} Id: #{person.id}"
      end
      rental_person = gets.chomp.to_i
      puts 'Please enter the date:'
      date = gets.chomp
      rental_detail = Rental.new(@people[rental_person], @books[rental_book], date)
      @rentals.push(rental_detail)
      puts 'Rental created.'
    end
  end

  def list_rentals
    puts 'Select id of a person'
    @people.each { |i| puts "id: #{i.id}, Person: #{i.name}" }
    print 'ID of person: '
    person_id = gets.chomp
    @rentals.each do |i|
      puts "Date: #{i.date}, Book: '#{i.book.title}' by #{i.book.author}" if i.person.id.to_i == person_id.to_i
    end
  end
end
