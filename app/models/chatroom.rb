class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :project
  # belongs_to :project_users
end
