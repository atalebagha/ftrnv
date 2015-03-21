class AddAttachmentStampToRequests < ActiveRecord::Migration
  def self.up
    change_table :requests do |t|
      t.attachment :stamp
    end
  end

  def self.down
    remove_attachment :requests, :stamp
  end
end
