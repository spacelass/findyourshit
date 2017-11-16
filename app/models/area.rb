class Area < ApplicationRecord
  has_many :buildings
  has_many :bathrooms, through: :buildings
end
