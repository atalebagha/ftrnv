class AddFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :passport, :string
    add_column :users, :ppnumber, :string
    add_column :users, :ppcountry, :string
    add_column :users, :ppstart, :date
    add_column :users, :ppexpire, :date
  end
end
