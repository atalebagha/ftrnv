class CreateVisaRequests < ActiveRecord::Migration
  def change
    create_table :visa_requests do |t|
      t.string :code
      t.date :date
      t.string :purpose
      t.integer :project_id
      t.integer :user_id
      t.text :description

      t.timestamps null: false
    end
  end
end
