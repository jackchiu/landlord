class AddLastAmmeterAmountToRooms < ActiveRecord::Migration
  def self.up
    add_column :rooms, :last_ammeter_amount, :integer
  end

  def self.down
    remove_column :rooms, :last_ammeter_amount
  end
end
