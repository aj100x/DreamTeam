class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :bio, :text
    add_column :users, :university, :string
    add_column :users, :uni_start_year, :date
    add_column :users, :uni_end_year, :date
    add_column :users, :course, :string
  end
end
