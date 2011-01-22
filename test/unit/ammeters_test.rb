require 'test_helper'

class AmmetersTest < ActiveSupport::TestCase
  test "test_check_ammeter" do
    puts "test_fuck"
    ammter = Ammeter.new(:amount => 1000, :room_id => 1, :check_at => Time.now)
    assert_equal ammter.room.number, 1
  end
end
