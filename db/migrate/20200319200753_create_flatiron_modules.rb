class CreateFlatironModules < ActiveRecord::Migration[6.0]
  def change
    create_table :flatiron_modules do |t|
      t.string :name
      t.string :branch
      t.timestamps
    end
  end
end
