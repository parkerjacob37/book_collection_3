class AddDetailsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :author, :string
    add_column :books, :price, :string
    add_column :books, :publisheddate, :string
  end
end
