require './book'
require './app'
require './data/data'

def create_book
  print 'Title: '
  title = gets.chomp

  print 'Author: '
  author = gets.chomp

  book = Book.new(title, author)
  @books.push(book)

  save_book(title, author)

  puts 'Book created.'
end
