class CreateProjectUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :project_users do |t|
      t.references :project
      t.references :user
      t.timestamps
    end
  end
end
