class Ammeter < ActiveRecord::Base
  belongs_to :room
  validates_associated :room

  validates_presence_of :room_id, :room, :check_at, :amount  
  validates_numericality_of :amount 
end
