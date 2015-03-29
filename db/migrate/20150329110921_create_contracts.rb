class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :reference
      t.string :title
      t.date :start
      t.integer :length
      t.integer :vacationdays
      t.integer :holidays
      t.integer :visadays
      t.string :employeeid
      t.integer :salary
      t.boolean :housing
      t.boolean :car
      t.integer :project_id
      t.string :position

      t.timestamps null: false
    end
  end
end
