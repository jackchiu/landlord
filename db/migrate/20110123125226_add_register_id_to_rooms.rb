class AddRegisterIdToRooms < ActiveRecord::Migration
  def self.up
    add_column :rooms, :register_id, :int
  end

  def self.down
    remove_column :rooms, :register_id
  end
end
