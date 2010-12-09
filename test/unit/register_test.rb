require 'test_helper'

class RegisterTest < ActiveSupport::TestCase
  test "test register obj presence" do
    reg = create_new_register
    assert reg.valid?, reg.errors.to_s
    assert reg.new_record? 

    reg = create_new_register
    reg.room_id = nil
    assert reg.invalid?

    reg = create_new_register
    reg.rent = nil
    assert reg.invalid?

    reg = create_new_register
    reg.ammeter_price = nil
    assert reg.invalid?

    reg = create_new_register
    reg.watter_price = nil
    assert reg.invalid?

    reg = create_new_register
    reg.bill_interval = nil
    assert reg.invalid?

    reg = create_new_register
    reg.registe_at = nil
    assert reg.invalid?

  end

  def create_new_register
    new_reg = Register.new(:room_id => 1, :rent => 400, :ammeter_price => 0.80, :watter_price => 10.00, :bill_interval => 1, :registe_at => Time.now)
  end
end
