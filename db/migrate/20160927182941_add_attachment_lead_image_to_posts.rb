class AddAttachmentLeadImageToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :lead_image
    end
  end

  def self.down
    remove_attachment :posts, :lead_image
  end
end
