class Project < ApplicationRecord
  belongs_to :user
  belongs_to :flatiron_module
end
