class Rental < ApplicationRecord
  has_many :rooms
  has_many :traffics
end
