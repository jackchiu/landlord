class Bill < ActiveRecord::Base
  belongs_to :register
  belongs_to :begin_ammeter, :class_name => "Ammeter", :foreign_key => "begin_ammeter_id"
  belongs_to :end_ammeter, :class_name => "Ammeter", :foreign_key => "end_ammeter_id"

  validate :check_ammeter_pairs

  def check_ammeter_pairs
    errors.add(:ammeters, "begin_ammeter is empty") if begin_ammeter.nil? and not end_ammeter.nil?
    errors.add(:ammeters, "end_ammeter is empty") if end_ammeter.nil? and not begin_ammeter.nil?
  end

  def sum_payment
    
  end

  def consume_ammeter
    
  end
end
