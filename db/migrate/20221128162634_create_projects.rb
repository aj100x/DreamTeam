class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :owner, index: true, foreign_key: { to_table: :users }
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
