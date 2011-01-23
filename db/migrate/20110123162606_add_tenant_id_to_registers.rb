class AddTenantIdToRegisters < ActiveRecord::Migration
  def self.up
    add_column :registers, :tenant_id, :integer
  end

  def self.down
    remove_column :registers, :tenant_id
  end
end
