class AddLastBillIdToRegisters < ActiveRecord::Migration
  def self.up
    add_column :registers, :last_bill_id, :integer
  end

  def self.down
    remove_column :registers, :last_bill_id
  end
end
