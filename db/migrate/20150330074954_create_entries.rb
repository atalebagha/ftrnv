class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :type
      t.date :date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
