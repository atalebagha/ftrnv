class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.string :type
      t.date :start
      t.integer :length
      t.integer :stay
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
