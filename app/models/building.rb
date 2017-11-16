class Building < ApplicationRecord
  belongs_to :area
  has_many :bathroom
end
