class Comment < ApplicationRecord
    belongs_to :project, class_name: "Project", foreign_key: "project_id"
    belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
    belongs_to :recipient, foreign_key: :recipient_id, class_name: 'User'

    scope :between_users, -> (user1_id, user2_id) do
        where(sender_id: user1_id, recipient_id: user2_id).or(
        where(sender_id: user2_id, recipient_id: user1_id)
    )
    end
end
