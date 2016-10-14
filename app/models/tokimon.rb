class Tokimon < ApplicationRecord
	belongs_to :trainer
	has_attached_file :tokimon_img, styles: { tokimon_index: "300x300>", tokimon_show: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :tokimon_img, content_type: /\Aimage\/.*\z/
end

