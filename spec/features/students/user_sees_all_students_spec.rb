require 'rails_helper'

describe 'User visits students_path' do
  describe 'user sees all the students' do
    it 'has all students on the page' do
      student = Student.create!(name: 'Keller')
      student2 = Student.create!(name: 'Oliver Kaid')
      student3 = Student.create!(name: 'Iago Bishop')

      visit students_path

      expect(page).to have_content(student.name)
      expect(page).to have_content(student2.name)
      expect(page).to have_content(student3.name)
    end
  end
end
