class Bill < ActiveRecord::Base
  belongs_to :register
  belongs_to :begin_ammeter, :class_name => "Ammeter", :foreign_key => "begin_ammeter_id"
  belongs_to :end_ammeter, :class_name => "Ammeter", :foreign_key => "end_ammeter_id"

  validate :check_ammeter_pairs

  def check_ammeter_pairs
    errors.add(:ammeters, "begin_ammeter is empty") if begin_ammeter.nil? and not end_ammeter.nil?
    errors.add(:ammeters, "end_ammeter is empty") if end_ammeter.nil? and not begin_ammeter.nil?
  end

  def sum
    @sum = 0
    @sum += ammeter_payment if not ammeter_payment.nil?
    @sum += rooms_payment if not rooms_payment.nil?
    @sum += water_payment if not water_payment.nil?
    @sum += other_payment if not other_payment.nil?
    return @sum
  end

  def consume_ammeter
    
  end
end
