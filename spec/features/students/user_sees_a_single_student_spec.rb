require 'rails_helper'

describe 'User visits student_path(student)' do
  describe 'user sees a single student' do
    it 'has a single student on the page' do
      student = Student.create!(name: 'Keller')

      visit student_path(student)

      expect(page).to have_content(student.name)
    end
  end
end
