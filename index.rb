require './app'
require './choice'

def menu
  puts 'Please choose an option by entering a number:'

  list = {
      '1' => 'List all books.',
      '2' => 'List all people.',
      '3' => 'Create a person.',
      '4' => 'Create a book.',
      '5' => 'Create a rental.',
      '6' => 'List all rentals for a given person id.',
      '7' => 'Exit app.'
  }

  list.each do |index, string|
    puts "#{index} - #{string}"
  end

  user_choice(gets.chomp.to_i)
end
