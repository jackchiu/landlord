class AddLastCheckAmmeterAtToRooms < ActiveRecord::Migration
  def self.up
    add_column :rooms, :last_check_ammeter_at, :datetime
  end

  def self.down
    remove_column :rooms, :last_check_ammeter_at
  end
end
