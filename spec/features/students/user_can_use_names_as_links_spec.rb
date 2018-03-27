require 'rails_helper'

describe 'a user wants to click on student name' do
  it 'to be taken to student page' do
    student = Student.create!(name: 'Keller')

    visit students_path

    click_on "#{student.name}"

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(student.name)
  end
end
