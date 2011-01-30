require 'test_helper'

class BillTest < ActiveSupport::TestCase
  test "set_ammeter_to_bill" do
    @bill = Bill.first()

    assert @bill.valid?
    assert_nil @bill.begin_ammeter
    assert_nil @bill.begin_ammeter_id
    assert_nil @bill.end_ammeter
    assert_nil @bill.end_ammeter_id
    
    @bill.begin_ammeter = Ammeter.new(:amount => 1000, :check_at => Time.now)
    assert_not_nil @bill.begin_ammeter
    assert_nil @bill.end_ammeter
    assert @bill.invalid?

    @bill.begin_ammeter = nil
    assert @bill.valid?

    @bill.end_ammeter = Ammeter.new(:amount => 1000, :check_at => Time.now)
    assert_not_nil @bill.end_ammeter
    assert_nil @bill.begin_ammeter
    assert @bill.invalid?

    @bill.end_ammeter = nil
    assert @bill.valid?
  end
end
