class AddAttachmentImageToVisas < ActiveRecord::Migration
  def self.up
    change_table :visas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :visas, :image
  end
end
