require 'test_helper'

class AmmetersTest < ActiveSupport::TestCase
  test "check_ammeter" do
    @room = Room.find_by_number(1)
    @ammter = Ammeter.new(:amount => 1000, :room_id => @room.id, :check_at => Time.now)
    assert_equal @ammter.room.number, @room.number
  end
end
