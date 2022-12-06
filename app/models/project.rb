class Project < ApplicationRecord

  has_many_attached :photos
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  has_many :project_users, dependent: :destroy
<<<<<<< HEAD
<<<<<<< HEAD
  has_many :category_projects, dependent: :destroy
  has_many :categories, through: :category_projects
=======
>>>>>>> 8b9389d75e9851c15eb3a4f1fa9ee084b9828d56
=======

  has_many :category_projects, dependent: :destroy
  has_many :categories, through: :category_projects
>>>>>>> cd8a790b26f0f87ac9db2c1a7feeec2e827f7613
  has_many :collaborators, through: :project_users, source: :user
  has_many :collaboration_requests, dependent: :destroy
  has_one :chatroom
  validates :name, :description, :yturl, presence: true
  validates :description, length: { minimum: 25 }

end
