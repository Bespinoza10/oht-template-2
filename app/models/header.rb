class Header < ActiveRecord::Base
  has_attached_file :header_bg, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :header_bg, content_type: /\Aimage\/.*\z/
end