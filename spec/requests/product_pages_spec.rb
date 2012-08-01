require 'spec_helper'

describe "Product Pages" do
    
    let(:category_name) {"Electronics"}
    before {visit new_product_path}
    before do
      #@category  = FactoryGirl.create(:category, :cat_name => category_name)
      @category = Category.find_by_cat_name("Electronics") 
      #@category.save
    end
    describe "new page" do
      let(:submit) {"Create Product"}
      describe "Form" do
        before do
          fill_in "product_pd_name",            :with => "iPhone 4S"
          fill_in "product_pd_picture",         with: "cell phone folder"
          fill_in "product_pd_price",           with: 999
          fill_in "product_pd_qty",             with: 15
          fill_in "product_pd_description",     with: "smart phone product"
          select  category_name, :from => "product_categories"
        end
        it "is successfully submitted" do
          initial_product_count = Product.count
          click_button submit
          final_product_count   = Product.count
          (initial_product_count + 1).should eql final_product_count  
        end
      end
      describe "Join Table" do
        it "is filled successfully (First Test)" do
           category = Category.find_by_id(@category.id)
           category.products.find_by_pd_name('iPhone 4s').id.should eql Product.last.id  
        end
        it "is filled successfully (Second Test)" do
          prodcut = Product.last
          Product.categories.find_by_id(category_id).id.should eql @category.id
        end
       end
       
    end
    
    
    
end
