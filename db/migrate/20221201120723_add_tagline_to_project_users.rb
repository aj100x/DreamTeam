class AddTaglineToProjectUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :tagline, :string
  end
end
