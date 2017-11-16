class Area < ApplicationRecord
  has_many :buildings, :bathrooms
end
