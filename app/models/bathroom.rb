class Bathroom < ApplicationRecord
  belongs_to :building
  belongs_to :area
  has_many :reviews, :dependent => :destroy
end
