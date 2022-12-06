class Category < ApplicationRecord

  CATEGORIES = %w[Technology Transport Education Healthcare Accountancy Sport Media Construction Marketing Charity Fashion Music Electronics Security]

  has_many :category_projects
  has_many :projects, through: :category_projects

  # validates :name, presence: true, inclusion: { in: CATEGORIES }

end
