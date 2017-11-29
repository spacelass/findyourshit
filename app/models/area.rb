class Area < ApplicationRecord
  has_many :buildings, :dependent => :destroy
  has_many :bathrooms, :dependent => :destroy
end
