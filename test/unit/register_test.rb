require 'test_helper'

class RegisterTest < ActiveSupport::TestCase
  test "register_tenant" do
    reg = Register.find_by_room_id(Room.find_by_number(1).id)
    assert_equal "yanjing", reg.tenant.name
    assert_not_nil reg.last_bill
    assert_not_nil reg.last_bill.begin_ammeter
    assert_not_nil reg.last_bill.end_ammeter
  end

  test "register_obj_presence" do
    reg = create_new_register
    assert reg.valid?, reg.errors.to_s
    assert reg.new_record? 

    reg = create_new_register
    reg.room_id = nil
    assert reg.invalid?
    assert_nil reg.room

    reg = create_new_register
    reg.rent = nil
    assert reg.invalid?

    reg = create_new_register
    reg.ammeter_price = nil
    assert reg.invalid?

    reg = create_new_register
    reg.water_price = nil
    assert reg.invalid?

    reg = create_new_register
    reg.bill_interval = nil
    assert reg.invalid?

    reg = create_new_register
    reg.registe_at = nil
    assert reg.invalid?
  end

  def create_new_register
    @room = Room.find_by_number(1)
    @tenant = Tenant.find_by_name('xiaopan')
    new_reg = Register.new(
      :room_id => @room.id, :tenant_id => @tenant.id, :rent => 400, :ammeter_price => 0.80, 
      :water_price => 10.00, :bill_interval => 1, :registe_at => Time.now)
  end
end
