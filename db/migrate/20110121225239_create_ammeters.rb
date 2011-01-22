class CreateAmmeters < ActiveRecord::Migration
  def self.up
    create_table :ammeters do |t|
      t.integer :room_id, :null => false
      t.integer :amount, :null => false
      t.datetime :check_at, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :ammeters
  end
end
