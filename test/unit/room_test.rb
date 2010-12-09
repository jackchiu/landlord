dfequire 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "room_load_record" do
    rm = Room.find(3)
    puts "room number is #{rm.number}"
    assert rm.number == 3
  end
end
