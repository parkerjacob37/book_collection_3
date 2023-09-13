require 'rails_helper'
# comment
RSpec.describe Book, type: :model do
  it "is valid with valid attributes" do
    book = FactoryBot.build(:book)
    expect(book).to be_valid
  end
end
