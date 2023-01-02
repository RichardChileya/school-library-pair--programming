require './app'
require './rental'

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
