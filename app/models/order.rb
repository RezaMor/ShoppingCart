# == Schema Information
#
# Table name: orders
#
#  id                      :integer         not null, primary key
#  od_date                 :datetime
#  od_last_update          :datetime        not null
#  od_status               :integer         default(0), not null
#  od_memo                 :string(255)     not null
#  od_shipping_first_name  :string(50)      default(""), not null
#  od_shipping_last_name   :string(50)      default(""), not null
#  od_shipping_address1    :string(100)     default(""), not null
#  od_shipping_address2    :string(100)     default(""), not null
#  od_shipping_phone       :string(32)      default(""), not null
#  od_shipping_city        :string(100)     default(""), not null
#  od_shipping_state       :string(32)      default(""), not null
#  od_shipping_postal_code :string(10)      default(""), not null
#  od_shipping_cost        :decimal(5, 2)
#  od_payment_first_name   :string(50)      default(""), not null
#  od_payment_last_name    :string(50)      default(""), not null
#  od_payment_address1     :string(100)     default(""), not null
#  od_payment_address2     :string(100)     default(""), not null
#  od_payment_phone        :string(32)      default(""), not null
#  od_payment_city         :string(100)     default(""), not null
#  od_payment_state        :string(32)      default(""), not null
#  od_payment_postal_code  :string(10)      default(""), not null
#  created_at              :datetime        not null
#  updated_at              :datetime        not null
#

class Order < ActiveRecord::Base
  attr_accessible(:od_date, :od_last_update, :od_memo, :od_payment_address1, :od_payment_address2, :od_payment_city, 
                  :od_payment_first_name, :od_payment_last_name, :od_payment_phone, :od_payment_postal_code,
                  :od_payment_state, :od_shipping_address1, :od_shipping_address2, :od_shipping_city, :od_shipping_cost,
                  :od_shipping_first_name, :od_shipping_last_name, :od_shipping_phone, :od_shipping_postal_code, 
                  :od_shipping_state, :od_status)
   
   validates(:od_status, presence: true)
   validates(:od_last_update, presence: true)
   validates(:od_memo, presence: true)
   validates(:od_payment_first_name, presence: true, length: { maximum: 50 })
   validates(:od_payment_last_name, presence: true, length: { maximum: 50 })
   validates(:od_payment_address1, presence: true, length: { maximum: 100 })
   validates(:od_payment_address2, presence: true, length: { maximum: 100 })
   validates(:od_payment_phone, presence: true, length: { maximum: 32 })
   validates(:od_payment_city, presence: true, length: { maximum: 100 })
   validates(:od_payment_postal_code, presence: true, length: { maximum: 10 })
   validates(:od_payment_state, presence: true, length: { maximum: 32 })
   validates(:od_shipping_first_name, presence: true, length: { maximum: 50 })
   validates(:od_shipping_last_name, presence: true, length: { maximum: 50 })
   validates(:od_shipping_address1, presence: true, length: { maximum: 100 })
   validates(:od_shipping_address2, presence: true, length: { maximum: 100 })
   validates(:od_shipping_cost, presence: true)
   validates(:od_shipping_phone, presence: true, length: { maximum: 32 })
   validates(:od_shipping_city, presence: true, length: { maximum: 100 })
   validates(:od_shipping_postal_code, presence: true, length: { maximum: 10 })
   validates(:od_shipping_state, presence: true, length: { maximum: 32 })
   
   
end
