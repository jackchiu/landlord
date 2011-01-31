require 'test_helper'

class AmmetersTest < ActiveSupport::TestCase
  test "check_ammeter" do
    @room = Room.find_by_number(1)
    @ammter = Ammeter.new(:amount => 1000, :room_id => @room.id, :check_at => Time.now)
    assert_equal @ammter.room.number, @room.number
  end

  test "rebuild_amount" do
    @ammeter = Ammeter.new(:amount => 1000)
    assert_equal 1000, @ammeter.recompute_amount

    @ammeter.amount = 1001
    assert_equal 1005, @ammeter.recompute_amount

    @ammeter.amount = 1
    assert_equal 5, @ammeter.recompute_amount

    @ammeter.amount = 1008
    assert_equal 1010, @ammeter.recompute_amount
  end
end
