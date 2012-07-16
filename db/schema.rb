# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120716130127) do

  create_table "orders", :force => true do |t|
    t.datetime "od_date"
    t.datetime "od_last_update",                                                                       :null => false
    t.integer  "od_status",                                                            :default => 0,  :null => false
    t.string   "od_memo",                                                                              :null => false
    t.string   "od_shipping_first_name",  :limit => 50,                                :default => "", :null => false
    t.string   "od_shipping_last_name",   :limit => 50,                                :default => "", :null => false
    t.string   "od_shipping_address1",    :limit => 100,                               :default => "", :null => false
    t.string   "od_shipping_address2",    :limit => 100,                               :default => "", :null => false
    t.string   "od_shipping_phone",       :limit => 32,                                :default => "", :null => false
    t.string   "od_shipping_city",        :limit => 100,                               :default => "", :null => false
    t.string   "od_shipping_state",       :limit => 32,                                :default => "", :null => false
    t.string   "od_shipping_postal_code", :limit => 10,                                :default => "", :null => false
    t.decimal  "od_shipping_cost",                       :precision => 5, :scale => 2
    t.string   "od_payment_first_name",   :limit => 50,                                :default => "", :null => false
    t.string   "od_payment_last_name",    :limit => 50,                                :default => "", :null => false
    t.string   "od_payment_address1",     :limit => 100,                               :default => "", :null => false
    t.string   "od_payment_address2",     :limit => 100,                               :default => "", :null => false
    t.string   "od_payment_phone",        :limit => 32,                                :default => "", :null => false
    t.string   "od_payment_city",         :limit => 100,                               :default => "", :null => false
    t.string   "od_payment_state",        :limit => 32,                                :default => "", :null => false
    t.string   "od_payment_postal_code",  :limit => 10,                                :default => "", :null => false
    t.datetime "created_at",                                                                           :null => false
    t.datetime "updated_at",                                                                           :null => false
  end

end
