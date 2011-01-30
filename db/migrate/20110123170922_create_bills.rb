class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|

      t.integer :register_id
      t.integer :begin_ammeter_id
      t.integer :end_ammeter_id
      t.decimal :rooms_payment
      t.decimal :water_payment
      t.decimal :ammeter_payment
      t.decimal :other_payment
      t.datetime :pay_at
      
      t.timestamps
    end
  end

  def self.down
    drop_table :bills
  end
end
