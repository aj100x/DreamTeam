class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :project_users, dependent: :destroy
  has_many :projects, through: :project_users
  has_many :owned_projects, foreign_key: "owner_id", class_name: "Project"
  has_many :collaboration_requests_as_requester, foreign_key: "requester_id", class_name: "CollaborationRequest"
  has_many :collaboration_requests_on_projects_owned, through: :owned_projects, source: :collaboration_requests
  has_many :collaboration_requests, foreign_key: "requester_id"
  has_one_attached :photo
  validates :first_name, :last_name, :bio, :tagline, presence: true, on: :update
  # has_many :colloboration_request_demands, foreign_key: "requestee_id", class_name: "CollaborationRequest"

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def education_details
    return unless course && university
    "Studied #{course.capitalize} at #{university.capitalize} from #{uni_start_year} to #{uni_end_year}"
  end
end


## set up accept/decline in collabreq controller
# method to accept.decline in collabl c
