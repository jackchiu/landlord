class Register < ActiveRecord::Base
  belongs_to :room
  validates_associated :room

  belongs_to :tenant
  validates_associated :tenant

  belongs_to :last_bill, :class_name => "Bill", :foreign_key => "last_bill_id"

  validates_presence_of :registe_at, :room, :room_id, :rent, :ammeter_price, \
    :water_price, :bill_interval, :tenant_id

  validates_numericality_of :room_id, :rent, :ammeter_price, :water_price, :bill_interval

end
