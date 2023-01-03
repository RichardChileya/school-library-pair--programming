require './student'

describe Student do
  context 'create a student' do
    student = Student.new(35, 'Emre', parent_permission: true)

    it 'show name' do
      expect(student.name).to eq 'Emre'
    end

    it 'and age' do
      expect(student.age).to eq 35
    end

    it 'has permission' do
      expect(student.parent_permission).to eq true
    end
  end
end
