require './nameable'
require './decorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end
end
