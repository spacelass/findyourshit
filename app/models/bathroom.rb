class Bathroom < ApplicationRecord
  has_many :reviews, optional:true
  belongs_to :building, :area
end
