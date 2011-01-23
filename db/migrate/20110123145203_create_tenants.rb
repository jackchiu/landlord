class CreateTenants < ActiveRecord::Migration
  def self.up
    create_table :tenants do |t|
      t.string :name
      t.string :id_card
      t.datetime :birthday
      t.string :cellphone
      t.string :native_place
      t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :tenants
  end
end
