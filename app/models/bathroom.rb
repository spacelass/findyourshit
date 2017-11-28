class Bathroom < ApplicationRecord
  belongs_to :building
  belongs_to :area
end
