class AddProjectToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :project, null: false, foreign_key: true
  end
end
