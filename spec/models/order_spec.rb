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

require 'spec_helper'

describe Order do
  
  before  do 
     @order = Order.new(od_date: "1962-09-23 03:23:34.234", od_last_update: "1962-09-23 03:23:34.234", od_memo: "This is", od_payment_address1: "90 carillon", od_payment_address2: "Newtown", od_payment_city: "Sydney", od_payment_first_name: "Reza", od_payment_last_name: "Moraveji", od_payment_phone:"0405806290", od_payment_postal_code: "2042", od_payment_state: "NSW", od_shipping_address1: "International House", od_shipping_address2: "sth", od_shipping_city: "Sydney", od_shipping_cost: "23.67", od_shipping_first_name: "Ali", od_shipping_last_name: "Moraveji", od_shipping_phone: "098348378", od_shipping_postal_code: "2008", od_shipping_state: "ACT", od_status: "3") 
  end
    
   # checks the existance of attributes of Order
   subject { @order }
   
    it { should respond_to(:od_status) }
    it { should respond_to(:od_last_update) }
    it { should respond_to(:od_memo) }
    it { should respond_to(:od_shipping_first_name) }
    it { should respond_to(:od_shipping_last_name) }
    it { should respond_to(:od_shipping_address1) }
    it { should respond_to(:od_shipping_address2) }
    it { should respond_to(:od_shipping_phone) }
    it { should respond_to(:od_shipping_city) }
    it { should respond_to(:od_shipping_state) }
    it { should respond_to(:od_shipping_postal_code) }
    it { should respond_to(:od_shipping_cost) }
    it { should respond_to(:od_payment_first_name) }
    it { should respond_to(:od_payment_last_name) }
    it { should respond_to(:od_payment_address1) }
    it { should respond_to(:od_payment_address2) }
    it { should respond_to(:od_payment_phone) }
    it { should respond_to(:od_payment_city) }
    it { should respond_to(:od_payment_state) }
    it { should respond_to(:od_payment_postal_code) }
   
    describe "the presence of attributes" do
       subject {@order}
       describe "Not empty status" do
          before  { @order.od_status = " "}
          it  { should_not be_valid }
       end
       describe "Not empty last_update" do
          before  { @order.od_last_update = " "}
          it  { should_not be_valid }
       end
       describe "Not empty memo" do
          before  { @order.od_memo = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_first_name" do
          before  { @order.od_shipping_first_name = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_last_name" do
          before  { @order.od_shipping_last_name = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_address1" do
          before  { @order.od_shipping_address1 = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_address2" do
          before  { @order.od_shipping_address2 = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_phone" do
          before  { @order.od_shipping_phone = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_city" do
          before  { @order.od_shipping_city = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_state" do
          before  { @order.od_shipping_state = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_postal_code" do
          before  { @order.od_shipping_postal_code = " "}
          it  { should_not be_valid }
       end
       describe "Not empty shipping_cost" do
          before  { @order.od_shipping_cost = " "}
          it  { should_not be_valid }
       end
       describe "Not empty payment_first_name" do
          before  { @order.od_payment_first_name = " "}
          it  { should_not be_valid }
       end
       describe "Not empty payment_last_name" do
          before  { @order.od_payment_last_name = " "}
          it  { should_not be_valid }
       end
       describe "Not empty payment_address1" do
          before  { @order.od_payment_address1 = " "}
          it  { should_not be_valid }
       end
       describe "Not empty payment_address2" do
          before  { @order.od_payment_address2 = " "}
          it  { should_not be_valid }
       end
       describe "Not empty payment_phone" do
          before  { @order.od_payment_phone = " "}
          it  { should_not be_valid }
       end
       describe "Not empty payment_city" do
          before  { @order.od_payment_city = " "}
          it  { should_not be_valid }
       end
       describe "Not empty payment_state" do
          before  { @order.od_payment_state = " "}
          it  { should_not be_valid }
       end
       describe "Not empty payment_postal_code" do
          before  { @order.od_payment_postal_code = " "}
          it  { should_not be_valid }
       end
    end
    
    
    describe "when attributes are too long" do
        subject {@order}
       describe "Long shipping_first_name" do
          before  { @order.od_shipping_first_name = "a"*51}
          it  { should_not be_valid }
       end
       describe "Long shipping_last_name" do
          before  { @order.od_shipping_last_name = "a"*51}
          it  { should_not be_valid }
       end
       describe "Long shipping_address1" do
          before  { @order.od_shipping_address1 = "a"*101}
          it  { should_not be_valid }
       end
       describe "Long shipping_address2" do
          before  { @order.od_shipping_address2 = "a"*101}
          it  { should_not be_valid }
       end
       describe "Long shipping_phone" do
          before  { @order.od_shipping_phone = "a"*33}
          it  { should_not be_valid }
       end
       describe "Long shipping_city" do
          before  { @order.od_shipping_city = "a"*101}
          it  { should_not be_valid }
       end
       describe "Long shipping_state" do
          before  { @order.od_shipping_state = "a"*33}
          it  { should_not be_valid }
       end
       describe "Long shipping_postal_code" do
          before  { @order.od_shipping_postal_code = "a"*11}
          it  { should_not be_valid }
       end
       describe "Long payment_first_name" do
          before  { @order.od_payment_first_name = "a"*51}
          it  { should_not be_valid }
       end
       describe "Long payment_last_name" do
          before  { @order.od_payment_last_name = "a"*51}
          it  { should_not be_valid }
       end
       describe "Long payment_address1" do
          before  { @order.od_payment_address1 = "a"*101}
          it  { should_not be_valid }
       end
       describe "Long payment_address2" do
          before  { @order.od_payment_address2 = "a"*101}
          it  { should_not be_valid }
       end
       describe "Long payment_phone" do
          before  { @order.od_payment_phone = "a"*33}
          it  { should_not be_valid }
       end
       describe "Long payment_city" do
          before  { @order.od_payment_city = "a"*101}
          it  { should_not be_valid }
       end
       describe "Long payment_state" do
          before  { @order.od_payment_state = "a"*33}
          it  { should_not be_valid }
       end
       describe "Long payment_postal_code" do
          before  { @order.od_payment_postal_code = "a"*11}
          it  { should_not be_valid }
       end
    end
    
    
end
