require './rental'
require './book'
require './student'

describe Rental do
  context 'create a rental' do
    book = Book.new 'test_title', 'test_author'
    student = Student.new(27, 'test_name', parent_permission: true)
    rental = Rental.new(student, book, '01/01/2023')

    it 'check the date' do
      rental.date.should eq '01/01/2023'
    end

    it 'show the title' do
      expect(book.title).to eq 'test_title'
    end

    it 'show the author' do
      expect(book.author).to eq 'test_author'
    end

    it 'show student name' do
      expect(student.name).to eq 'test_name'
    end

    it 'show student age' do
      expect(student.age).to eq 27
    end

    it 'show student permission' do
      expect(student.parent_permission).to eq true
    end
  end
end
