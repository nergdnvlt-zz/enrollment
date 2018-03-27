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

  describe 'from new student form' do
    it 'links user to the student index' do
      student = Student.create!(name: 'Keller')
      student2 = Student.create!(name: 'Oliver Kaid')
      student3 = Student.create!(name: 'Iago Bishop')

      visit new_student_path

      click_on 'All Students'

      expect(page).to have_content(student.name)
      expect(page).to have_content(student2.name)
      expect(page).to have_content(student3.name)
    end
  end

  describe 'from edit student form' do
    it 'links user to the student index' do
      student = Student.create!(name: 'Keller')
      student2 = Student.create!(name: 'Oliver Kaid')
      student3 = Student.create!(name: 'Iago Bishop')

      visit edit_student_path(student)

      click_on 'All Students'

      expect(page).to have_content(student.name)
      expect(page).to have_content(student2.name)
      expect(page).to have_content(student3.name)
    end
  end

  describe 'to the form to create new student' do
    it 'from student page links user to new' do
      student = Student.create!(name: 'Keller')

      visit student_path(student)

      click_on 'Edit Student'

      fill_in 'student[name]', with: 'Bob Hoskins'
      click_on 'Update Student'

      expect(page).to_not have_content(student.name)
      expect(page).to have_content('Bob Hoskins')
    end
  end

  describe 'from show page go to form for new student' do
    it 'links user to the correct form' do
      student = Student.create!(name: 'Keller')

      visit student_path(student)

      click_on 'Create Student'

      fill_in 'student[name]', with: 'Bob Hoskins'
      click_on 'Create Student'

      expect(page).to have_content('Bob Hoskins')
    end
  end

  describe 'from edit page go to form for new student' do
    it 'links user to the correct form' do
      student = Student.create!(name: 'Keller')

      visit edit_student_path(student)

      click_on 'Create Student'

      fill_in 'student[name]', with: 'Bob Hoskins'
      click_on 'Create Student'

      expect(page).to have_content('Bob Hoskins')
    end
  end

  describe 'from index page go to form for new student' do
    it 'links user to the correct form' do
      student = Student.create!(name: 'Keller')

      visit students_path

      click_on 'Create Student'

      fill_in 'student[name]', with: 'Bob Hoskins'
      click_on 'Create Student'

      expect(page).to have_content('Bob Hoskins')
    end
  end
end
