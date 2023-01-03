require './classroom'

describe Classroom do
  context 'create a classroom' do
    classroom = Classroom.new 'ruby classroom'

    it 'show classroom' do
      expect(classroom.label).to eq 'ruby classroom'
    end
  end
end
