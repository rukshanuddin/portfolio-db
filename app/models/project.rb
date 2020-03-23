class Project < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 255 }
  validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
  validates :flatiron_module_id, presence: true
  belongs_to :user
  belongs_to :flatiron_module
  has_many :comments

  default_scope -> { includes(:user).order(created_at: :desc) }

  scope :by_flatiron_module, ->(branch, flatiron_module_name) do 
    joins(:flatiron_module).where(flatiron_modules: {name: flatiron_module_name, branch: branch})
  end

  scope :by_branch, ->(branch) do
    joins(:flatiron_module).where(flatiron_modules: {branch: branch})
  end

  scope :search, ->(search) do
    where('title LIKE lower(?) OR description LIKE lower(?)', "%#{search}%", "%#{search}%")
  end
end
