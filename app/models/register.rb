class Register < ActiveRecord::Base
  belongs_to :room
  validates_associated :room

  validates_presence_of :registe_at, :room, :room_id, :rent, :ammeter_price, \
    :watter_price, :bill_interval

  validates_numericality_of :room_id, :rent, :ammeter_price, :watter_price, :bill_interval

end
