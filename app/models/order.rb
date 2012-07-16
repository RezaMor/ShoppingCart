class Order < ActiveRecord::Base
  attr_accessible :, :od_date, :od_last_update, :od_memo, :od_payment_address1, :od_payment_address2, :od_payment_city, :od_payment_first_name, :od_payment_last_name, :od_payment_phone, :od_payment_postal_code, :od_payment_state, :od_shipping_address1, :od_shipping_address2, :od_shipping_city, :od_shipping_cost, :od_shipping_first_name, :od_shipping_last_name, :od_shipping_phone, :od_shipping_postal_code, :od_shipping_state, :od_status
end
