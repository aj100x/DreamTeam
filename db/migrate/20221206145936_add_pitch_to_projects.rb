class AddPitchToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :pitch, :string
  end
end
