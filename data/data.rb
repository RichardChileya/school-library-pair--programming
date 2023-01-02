require_relative '../book'
require_relative '../person'
require_relative '../teacher'
require_relative '../student'
require 'json'

def save_book(title, author)
  obj = {
    title: title,
    author: author
  }

  if File.exist?('./books.json')
    file = File.open('./books.json')

    if file.empty?
      book = [obj]
    else
      book = JSON.parse(File.open('./books.json'))
      book << obj
    end

    file.close

    addFile = File.open('./books.json', 'w')
    addFile.write(JSON.generate(book))
    addFile.close
  end  
end
    