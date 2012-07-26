require 'spec_helper'

describe "ProductPages" do
    
    
    before {visit new_prodcut_path}
    describe "product new page" do
      let(:submit) {"Create Product"}
      describe "when product is valid it should be stored in database" do
        before do
          fill_in product_pd_name, :with => "iPhone 4S"
          fill_in product_pd_picture, with: "cell phone folder"
          fill_in product_pd_price, with: 999
          fill_in product_pd_qty, with: 15
          fill_in product_pd_description   "smart phone product"
        end
        initial_product_count = Product.count
        click_button submit
        final_product_count   = Product.count
        it "when product is valid" do
          (initial_product_count + 1).should eql final_product_count  
        end
      end
    end
    
    
    
end
