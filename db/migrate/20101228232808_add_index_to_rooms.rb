class AddIndexToRooms < ActiveRecord::Migration
  def self.up
    add_index :rooms, :number, :unique => false
  end

  def self.down
    remove_index :rooms, :number
  end
end
