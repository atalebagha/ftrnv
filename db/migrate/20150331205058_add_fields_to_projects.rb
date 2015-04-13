class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :client_id, :integer
    remove_column :projects, :customer_id, :integer
  end
end
