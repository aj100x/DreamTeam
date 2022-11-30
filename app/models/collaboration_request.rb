class CollaborationRequest < ApplicationRecord
  belongs_to :project
  belongs_to :requester, class_name: "User"
  enum :status, { pending: "pending", accepted: "accepted", declined: "declined" }
  validates :content, length: { minimum: 5 }
end
