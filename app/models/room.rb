class Room < ActiveRecord::Base
  has_many :registers

  validates_presence_of :number, :group, :floor
  validates_numericality_of :number, :floor, :only_integer => true
  validates_inclusion_of :group, :in => %w(west, east)
end
