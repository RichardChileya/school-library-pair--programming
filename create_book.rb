require './book'
require './app'

def create_book
  print 'Title: '
  title = gets.chomp

  print 'Author: '
  author = gets.chomp

  book = Book.new(title, author)
  @books.push(book)

  puts 'Book created.'
end
