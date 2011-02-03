class AddPayAtToRooms < ActiveRecord::Migration
  def self.up
    add_column :rooms, :last_pay_at, :datetime
  end

  def self.down
    remove_column :rooms, :last_pay_at
  end
end
