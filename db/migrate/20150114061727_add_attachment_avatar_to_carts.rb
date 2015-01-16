class AddAttachmentAvatarToCarts < ActiveRecord::Migration
  def self.up
    change_table :carts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :carts, :avatar
  end
end
