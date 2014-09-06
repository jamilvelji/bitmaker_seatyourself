class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :reviews
  has_many :reservations
  has_and_belongs_to_many :cuisines
  belongs_to :user

  searchable do
      text :name, :boost => 2
      text :food_type, :boost => 2
      text :name, :address, :food_type
      double :price
  end

  # def self.search(query)
  #   where("name like ?", "%#{query}%") 
  # end
end
