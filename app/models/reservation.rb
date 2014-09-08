class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  default_scope {order('booking ASC')}
end
