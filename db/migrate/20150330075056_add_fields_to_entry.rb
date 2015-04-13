class AddFieldsToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :visa_id, :integer
  end
end
