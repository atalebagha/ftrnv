class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :code
      t.boolean :active
      t.text :description
      t.integer :lock_version

      t.timestamps null: false
    end
  end
end
