# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110123170922) do

  create_table "ammeters", :force => true do |t|
    t.integer  "room_id",    :null => false
    t.integer  "amount",     :null => false
    t.datetime "check_at",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", :force => true do |t|
    t.integer  "register_id"
    t.integer  "begin_ammeter_id"
    t.integer  "end_ammeter_id"
    t.decimal  "rooms_payment"
    t.decimal  "water_payment"
    t.decimal  "ammeter_payment"
    t.decimal  "other_payment"
    t.datetime "pay_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registers", :force => true do |t|
    t.integer  "room_id",                         :null => false
    t.decimal  "rent",                            :null => false
    t.decimal  "ammeter_price", :default => 1.0,  :null => false
    t.decimal  "water_price",   :default => 10.0, :null => false
    t.integer  "bill_interval", :default => 1,    :null => false
    t.datetime "registe_at",                      :null => false
    t.datetime "moveout_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tenant_id"
  end

  create_table "rooms", :force => true do |t|
    t.integer  "number"
    t.integer  "floor"
    t.string   "group"
    t.integer  "length"
    t.integer  "width"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_check_ammeter_at"
    t.integer  "last_ammeter_amount"
    t.integer  "register_id"
  end

  add_index "rooms", ["number"], :name => "index_rooms_on_number", :unique => true

  create_table "tenants", :force => true do |t|
    t.string   "name"
    t.string   "id_card"
    t.datetime "birthday"
    t.string   "cellphone"
    t.string   "native_place"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
