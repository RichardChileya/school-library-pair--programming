require './teacher'

describe Teacher do
  context 'create a teacher' do
    teacher = Teacher.new(33, 'Ruby', 'Emre')

    it 'check the age' do
      expect(teacher.age).to eq 33
    end

    it 'check the specialization' do
      expect(teacher.specialization).to eq 'Ruby'
    end

    it 'check the name' do
      expect(teacher.name).to eq 'Emre'
    end
  end
end
