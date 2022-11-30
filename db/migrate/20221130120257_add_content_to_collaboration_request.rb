class AddContentToCollaborationRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :collaboration_requests, :content, :text
  end
end
