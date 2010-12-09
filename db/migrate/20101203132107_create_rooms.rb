class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.integer :number
      t.integer :floor
      t.string :group
      t.integer :length
      t.integer :width
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
