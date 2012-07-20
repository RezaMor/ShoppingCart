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

ActiveRecord::Schema.define(:version => 20120720062138) do

  create_table "categories", :force => true do |t|
    t.string   "cat_name",        :limit => 50, :default => "", :null => false
    t.string   "cat_description"
    t.string   "cat_image"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "categories_products", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

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

  create_table "product_orders", :force => true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.integer  "po_pd_qty"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "pd_name",        :limit => 50,                               :default => "", :null => false
    t.string   "pd_description"
    t.decimal  "pd_price",                     :precision => 5, :scale => 2
    t.string   "pd_picture"
    t.integer  "pd_qty"
    t.datetime "pd_date"
    t.datetime "pd_last_update"
    t.datetime "created_at",                                                                 :null => false
    t.datetime "updated_at",                                                                 :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name",            :limit => 50,                  :null => false
    t.string   "user_password_digest",                                :null => false
    t.string   "user_email",                                          :null => false
    t.string   "user_first_name",      :limit => 50,                  :null => false
    t.string   "user_last_name",       :limit => 50,                  :null => false
    t.string   "user_phone",           :limit => 32,  :default => "", :null => false
    t.string   "user_city",            :limit => 100, :default => "", :null => false
    t.string   "user_state",           :limit => 32,  :default => "", :null => false
    t.string   "user_postal_code",     :limit => 10,  :default => "", :null => false
    t.datetime "user_regdate",                                        :null => false
    t.datetime "user_last_login",                                     :null => false
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
  end

end
