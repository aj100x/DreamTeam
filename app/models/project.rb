class Project < ApplicationRecord
  has_many_attached :photos
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  has_many :project_users, dependent: :destroy
  has_many :collaborators, through: :project_users, source: :user
  has_many :collaboration_requests, dependent: :destroy
  validates :name, :description, :yturl, presence: true
  validates :description, length: { minimum: 25 }
end
