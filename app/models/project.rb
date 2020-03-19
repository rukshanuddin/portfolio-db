class Project < ApplicationRecord

  belongs_to :user
  belongs_to :flatiron_module

  default_scope -> { includes(:user).order(created_at: :desc) }

  scope :by_flatiron_module, -> (branch, flatiron_module_name) do 
    joins(:flatiron_module).where(flatiron_modules: {name: flatiron_module_name, branch: branch}) 
  end

  scope :by_branch, -> (branch) do
    joins(:flatiron_module).where(flatiron_modules: {branch: branch}) 
  end

  scope :search, -> (search) do
    where("title ILIKE lower(?) OR content ILIKE lower(?)", "%#{search}%", "%#{search}%")
  end
end
