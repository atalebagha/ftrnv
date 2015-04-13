class CreateTimesheetRows < ActiveRecord::Migration
  def change
    create_table :timesheet_rows do |t|
      t.integer :timesheet_id
      t.integer :type
      t.float :hours
      t.float :days

      t.timestamps null: false
    end
  end
end
