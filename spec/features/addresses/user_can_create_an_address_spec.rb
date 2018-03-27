require 'rails_helper'

describe 'User can create address' do
  describe 'user fills form to create address' do
    it 'sucessfully adds address to student' do
      student = Student.create!(name: 'Odin')

      visit new_student_address_path(student)

      fill_in 'address[description]', with: 'Valhalla'
      fill_in 'address[street]', with: 'Old Way'
      fill_in 'address[city]', with: 'Bellingham'
      fill_in 'address[state]', with: 'Washington'
      fill_in 'address[zip]', with: 888
      click_on 'Create Address'

      expect(page).to have_content('Valhalla')
    end
  end
end
