class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.integer :project_id
      t.integer :month
      t.integer :year
      t.text :description
      t.boolean :committed
      t.datetime :committed_at
      t.integer :lock_version
      t.datetime :start_day_cache
      t.string :auto_sort

      t.timestamps null: false
    end
  end
end
