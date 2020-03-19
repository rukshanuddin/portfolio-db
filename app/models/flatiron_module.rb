class FlatironModule < ApplicationRecord
    has_many :projects, class_name: "Project", foreign_key: "project_id"
end
