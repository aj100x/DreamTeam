class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project_users, dependent: :destroy
  has_many :projects, through: :project_users
  has_many :owned_projects, foreign_key: "owner_id", class_name: "Project"
  has_many :collaboration_requests, foreign_key: "requester_id"
  has_one_attached :image
  validates :first_name, :last_name, :bio, presence: true, on: :update
  # has_many :colloboration_request_demands, foreign_key: "requestee_id", class_name: "CollaborationRequest"

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def education_details
    return unless course && university

    "took #{course.capitalize} at #{university.capitalize} from #{uni_start_year} to #{uni_end_year}"
  end
end
