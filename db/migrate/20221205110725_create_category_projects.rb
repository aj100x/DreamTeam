class CreateCategoryProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :category_projects do |t|
      t.references :category
      t.references :project
      # reference to category
      # reference to project
      t.timestamps
    end
  end
end
