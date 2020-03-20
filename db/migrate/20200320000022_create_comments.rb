class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :sender_id
      t.integer :recipient_id
      t.references :user, foreign_key: true
      t.belongs_to :project, index: true
      t.timestamps
    end
    add_index :comments, :recipient_id
    add_index :comments, :sender_id
    add_index :comments, [:recipient_id, :sender_id], unique: true
  end
end
