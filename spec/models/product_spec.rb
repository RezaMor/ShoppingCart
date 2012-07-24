# == Schema Information
#
# Table name: products
#
#  id             :integer         not null, primary key
#  pd_name        :string(50)      default(""), not null
#  pd_description :string(255)
#  pd_price       :decimal(5, 2)
#  pd_picture     :string(255)
#  pd_qty         :integer
#  pd_date        :datetime
#  pd_last_update :datetime
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

require 'spec_helper'

describe Product do
  
   # describe "when attributes are changed" do
      # before :each do
         # @product = FactoryGirl.create(:product, pd_name: "Outside Factory")
      # end
      # it "when name is changed" do
         # @product.pd_name.should == "Outside Factory" #       == can be replaced by eql
      # end
   # end
   
   describe "when category product association is valid" do
      before :each do
         @product1  = FactoryGirl.create(:product, :pd_name => "iPhone")
         @po        = FactoryGirl.create(:product_order, product: @product1)
         @cat1      = FactoryGirl.create(:category, cat_name: "OutCat")
         @product2  = FactoryGirl.create(:product)
      end
      it "one_to_many association Product => po" do
        @product1.product_orders.last.po_pd_qty.should eql 19
      end
      it "checking ID one_to_many association Product => po" do
        @product1.product_orders.last.product_id.should eql @product1.id
      end
      it "many_to_many association Product => Category" do
        @product2.categories.last.cat_name.should eql "Electronics"
      end
   end
   

  
end
