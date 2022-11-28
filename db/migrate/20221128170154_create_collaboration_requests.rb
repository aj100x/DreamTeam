class CreateCollaborationRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :collaboration_requests do |t|
      t.references :project, null: false, foreign_key: true
      t.references :requester, index: true, foreign_key: { to_table: :users }
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
