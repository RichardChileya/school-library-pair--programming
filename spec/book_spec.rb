require './book'

describe Book do
  context 'create a book' do
    book = Book.new 'test_title', 'test_author'

    it 'show the title' do
      expect(book.title).to eq 'test_title'
    end

    it 'show the author' do
      expect(book.author).to eq 'test_author'
    end
  end
end
