class AddAttachmentTokimonImgToTokimons < ActiveRecord::Migration
  def self.up
    change_table :tokimons do |t|
      t.attachment :tokimon_img
    end
  end

  def self.down
    remove_attachment :tokimons, :tokimon_img
  end
end
