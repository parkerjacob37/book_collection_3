require 'rails_helper'

RSpec.feature "Book Creation", type: :feature do
  scenario "User creates a book sucessfully" do
    visit "/books/new"
    fill_in 'Title', with: 'Generic Book'
    fill_in 'Author', with: 'John Smith'
    fill_in 'Price', with: '4.99'
    fill_in 'Published Date', with: '1/1/2001'

    click_button "Create Book"
    expect(page).to have_text("Book was successfully created.")
  end
  scenario "Rainy day for Title field" do
    visit "/books/new"
    fill_in 'Title', with: ''
    fill_in 'Author', with: 'John Smith'
    fill_in 'Price', with: '4.99'
    fill_in 'Published Date', with: '1/1/2001'

    click_button "Create Book"
    expect(page).to have_text("error")
  end
  scenario "Rainy day for Author field" do
    visit "/books/new"
    fill_in 'Title', with: 'Generic Book'
    fill_in 'Author', with: ''
    fill_in 'Price', with: '4.99'
    fill_in 'Published Date', with: '1/1/2001'

    click_button "Create Book"
    expect(page).to have_text("error")
  end
  scenario "Rainy day for Price field" do
    visit "/books/new"
    fill_in 'Title', with: 'Generic Book'
    fill_in 'Author', with: 'John Smith'
    fill_in 'Price', with: ''
    fill_in 'Published Date', with: '1/1/2001'

    click_button "Create Book"
    expect(page).to have_text("error")
  end

  scenario "Rainy day for Published Date field" do
    visit "/books/new"
    fill_in 'Title', with: 'Generic Book'
    fill_in 'Author', with: 'John Smith'
    fill_in 'Price', with: '4.99'
    fill_in 'Published Date', with: ''

    click_button "Create Book"
    expect(page).to have_text("error")
  end
end
