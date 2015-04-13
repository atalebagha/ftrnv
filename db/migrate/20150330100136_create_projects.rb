class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :customer_id
      t.boolean :active
      t.string :name
      t.string :code
      t.text :description
      t.integer :locked_version

      t.timestamps null: false
    end
  end
end
