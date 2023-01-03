require_relative './person'
require_relative './book'
require_relative './teacher'
require_relative './student'
require_relative './rental'
require_relative './index'
require_relative './create_book'
require_relative './data/data'
require 'date'

class App
  attr_accessor :books, :rentals, :people

  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def welcome
    puts 'Welcome to the School Library.'
    puts "\n"
    menu
  end

  def load_data
    load_person
    puts
    load_books
    puts
    load_rentals
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
