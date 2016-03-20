class AddAttachmentPicsToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :pics
    end
  end

  def self.down
    remove_attachment :books, :pics
  end
end
