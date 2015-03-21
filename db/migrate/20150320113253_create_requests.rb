class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :type_id
      t.integer :contract_id
      t.date :start
      t.integer :days
      t.integer :vacationdays
      t.integer :exitdays
      t.integer :otherdays
      t.date :actualreturn
      

      t.timestamps null: false
    end
  end
end
