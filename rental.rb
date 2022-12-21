require_relative './book'
require_relative './person'

class Rental
  attr_reader :book, :person
  attr_accessor :date

  def initialize(person, book, date)
    @date = date
    @book = book
    @person = person
    book.rentals << self
    person.rentals << self
  end
end
