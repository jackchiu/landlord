class CreateRegisters < ActiveRecord::Migration
  def self.up
    create_table :registers do |t|
      t.integer :room_id, :null => false
      t.decimal :rent, :null => false
      t.decimal :ammeter_price, :null => false, :default => 1.0
      t.decimal :watter_price, :null => false, :default => 10.0
      t.integer :bill_interval, :null => false, :default => 1
      t.datetime :registe_at, :null => false
      t.datetime :moveout_at

      t.timestamps
    end
  end

  def self.down
    drop_table :registers
  end
end
