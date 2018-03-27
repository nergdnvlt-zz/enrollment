require 'rails_helper'

describe 'As a user I want to navigate' do
  describe 'to the index of all students' do
    it 'links user to the correct index' do
      student = Student.create!(name: 'Keller')
      student2 = Student.create!(name: 'Oliver Kaid')
      student3 = Student.create!(name: 'Iago Bishop')

      visit student_path(student)

      click_on 'All Students'

      expect(page).to have_content(student.name)
      expect(page).to have_content(student2.name)
      expect(page).to have_content(student3.name)
    end
  end
end
