class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project_users, dependent: :destroy
  has_many :projects, through: :project_users
  has_many :collaboration_requests, foreign_key: "requester_id"
  validates :first_name, :last_name, :bio, presence: true, on: :update
  # has_many :colloboration_request_demands, foreign_key: "requestee_id", class_name: "CollaborationRequest"
end
