require 'rails_helper'

describe 'User can create student' do
  describe 'user fills form to create student' do
    it 'sucessfully adds student' do
      visit new_student_path

      fill_in 'student[name]', with: 'Ace High'
      click_on 'Create Student'

      expect(page).to have_content('Ace High')
    end
  end
end
