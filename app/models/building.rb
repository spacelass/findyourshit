class Building < ApplicationRecord
  belongs_to :area
  has_many :bathrooms
  has_attached_file :avatar, styles: { medium: "300x300", thumb: "100x100" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
