class Room < ActiveRecord::Base
  def sn
    return "#{group.upcase} - F#{floor} / #{number}"
  end

  def size
    return "#{width} * #{length}"
  end

  has_many :registers

  validates_presence_of :number, :group, :floor
  validates_numericality_of :number, :floor, :only_integer => true
  validates_inclusion_of :group, :in => %w(west east)
  validates_inclusion_of :state, :in => %w(empty checkin scheduled)

end
