class Register < ActiveRecord::Base
  belongs_to :room
  validates_associated :room

  validates_presence_of :registe_at, :room, :room_id, :rent, :ammeter_price, \
    :water_price, :bill_interval, :tenant_id

  validates_numericality_of :room_id, :rent, :ammeter_price, :water_price, :bill_interval

end
