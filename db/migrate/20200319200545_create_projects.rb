class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :module
      t.string :description
      t.string :github
      t.string :youtube
      t.belongs_to :flatiron_module, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
