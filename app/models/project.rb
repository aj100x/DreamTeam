class Project < ApplicationRecord
  after_create do
    Chatroom.create!(project: self)
  end
  has_many_attached :photos
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  has_many :project_users, dependent: :destroy
  has_many :category_projects, dependent: :destroy
  has_many :categories, through: :category_projects
  has_many :category_projects, dependent: :destroy
  has_many :categories, through: :category_projects
  has_many :collaborators, through: :project_users, source: :user
  has_many :collaboration_requests, dependent: :destroy
  has_one :chatroom, dependent: :destroy
  # has_one :pitch, dependent: :destroy
  # validates :name, :description, :pitch, presence: true
  validates :description, length: { minimum: 25 }
end
