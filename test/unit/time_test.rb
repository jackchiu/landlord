require 'test_helper'

class TimeTest < ActiveSupport::TestCase
  def test_day_sub
    @time1 = Time.local(2011, 01, 23, 22, 31, 0)
    @time2 = Time.local(2011, 01, 23, 20, 31, 0)
    assert_equal (@time1.to_i - @time2.to_i)/(60*60*24), 0
    @time2 = Time.local(2011, 01, 22, 20, 31, 0)
    assert_equal (@time1.to_i - @time2.to_i)/(60*60*24), 1
  end
end
