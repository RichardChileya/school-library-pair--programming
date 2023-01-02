require './app'
require './index'
require './create_person'
require './create_book'
require './create_rental'

def user_choice(choice)
  case choice
  when 1
    list_books
  when 2
    list_people
  when 3
    create_person
  when 4
    create_book
  when 5
    create_rental
  when 6
    list_rentals
  when 7
    puts 'Thank you and have a nice day.'
    exit
  else
    puts 'Please choose a number between 1 and 7.'
  end
  menu
end
