class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :reviews
  has_many :reservations
  has_and_belongs_to_many :cuisines
end
