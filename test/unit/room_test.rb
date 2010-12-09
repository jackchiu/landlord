require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "test room obj presence" do
    room = create_new_room
    assert room.valid?, room.errors.to_s
  end
  
  def create_new_room
    new_room = Room.find(1)
    assert_equal new_room.id, 1
    assert_equal new_room.number, 1
    assert_equal new_room.floor, 1
    assert_equal new_room.width, 3
    assert_match /^west$/, new_room.group 
    assert_match /^free$/, new_room.state
    new_room
  end
end
