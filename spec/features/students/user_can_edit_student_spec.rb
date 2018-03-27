require 'rails_helper'

describe 'User wants to edit student' do
  describe 'so they visit edit_student path' do
    it 'updates student from form' do
      student = Student.create!(name: 'Gandalf')

      visit edit_student_path(student)

      fill_in 'student[name]', with: 'Odin'
      click_on 'Update Student'

      expect(page).to have_content('Odin')
      expect(page).to_not have_content('Gandalf')
    end
  end
end
