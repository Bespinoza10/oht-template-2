class Portfolio < ActiveRecord::Base
  has_attached_file :portfolios_img, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :portfolios_img, content_type: /\Aimage\/.*\z/
end
