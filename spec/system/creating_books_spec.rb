require 'rails_helper'

RSpec.describe "CreatingBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'saves and displays resulting books' do
    visit '/books/new'

    fill_in 'Title', with: 'Generic Book'
    fill_in 'Author', with: 'John Smith'
    fill_in 'Price', with: '4.99'
    fill_in 'Published Date', with: '1/1/2001'

    click_on 'Create Book'

    expect(page).to have_content('Generic Book')
    expect(page).to have_content('John Smith')
    expect(page).to have_content('4.99')
    expect(page).to have_content('1/1/2001')

    book = Book.order("id").last
    expect(book.title).to eq('Generic Book')
    expect(book.author).to eq('John Smith')
    expect(book.price).to eq('4.99')
    expect(book.publisheddate).to eq('1/1/2001')
  end
end
