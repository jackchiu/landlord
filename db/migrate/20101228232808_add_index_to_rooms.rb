class AddIndexToRooms < ActiveRecord::Migration
  def self.up
    add_index :rooms, :number, :unique => true
  end

  def self.down
    remove_index :rooms, :number
  end
end
