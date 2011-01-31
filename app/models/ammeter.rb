class Ammeter < ActiveRecord::Base
  belongs_to :room
  validates_associated :room

  validates_presence_of :room_id, :room, :check_at, :amount  
  validates_numericality_of :amount 
  
  def recompute_amount
    return amount if amount % 5 == 0

    if amount % 5 != 0 then
      return amount - (amount % 5) + 5 
    end
  end
end
