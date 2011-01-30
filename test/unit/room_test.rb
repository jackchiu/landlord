require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "test room obj presence" do
    room = create_new_room
    assert room.valid?, room.errors.to_s
  end
  
  def create_new_room
    new_room = Room.find_by_number(1)
    assert_equal new_room.number, 1
    assert_equal new_room.floor, 1
    assert_match /^west$/, new_room.group 
    assert_match /^checkin$/, new_room.state
    new_room
  end
end
