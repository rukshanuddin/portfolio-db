class Comment < ApplicationRecord
  # Comment class, belongs_to Project, has_many Users through Projects
  belongs_to :project
  validates :body, presence: true
  validates :author_name, presence: true
  has_many :users, through: :projects, source: :projects_table_foreign_key_to_users_table
end
