class AddYturlToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :yturl, :string
  end
end
