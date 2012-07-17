class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.timestamp :od_date,              :default => nil   
      t.timestamp :od_last_update,       :null => false
      t.integer :od_status,              :default => 0, :null => false
      t.string :od_memo,                 :null => false
      t.string :od_shipping_first_name,  :limit => 50,  :null => false,  :default => ''
      t.string :od_shipping_last_name,   :limit => 50,  :null => false,  :default => ''
      t.string :od_shipping_address1,    :limit => 100,  :null => false, :default => ''
      t.string :od_shipping_address2,    :limit => 100,  :null => false, :default => ''
      t.string :od_shipping_phone,       :limit => 32,  :null => false, :default => ''
      t.string :od_shipping_city,        :limit => 100,  :null => false, :default => ''
      t.string :od_shipping_state,       :limit => 32,  :null => false, :default => ''
      t.string :od_shipping_postal_code, :limit => 10,  :null => false, :default => ''
      t.decimal :od_shipping_cost,       :precision => 5, :scale => 2
      t.string :od_payment_first_name,   :limit => 50,  :null => false,  :default => ''
      t.string :od_payment_last_name,    :limit => 50,  :null => false,  :default => ''
      t.string :od_payment_address1,     :limit => 100,  :null => false, :default => ''
      t.string :od_payment_address2,     :limit => 100,  :null => false, :default => ''
      t.string :od_payment_phone,        :limit => 32,  :null => false, :default => ''
      t.string :od_payment_city,         :limit => 100,  :null => false, :default => ''
      t.string :od_payment_state,        :limit => 32,  :null => false, :default => ''
      t.string :od_payment_postal_code,  :limit => 10,  :null => false, :default => ''

      t.timestamps
    end
  end
end
