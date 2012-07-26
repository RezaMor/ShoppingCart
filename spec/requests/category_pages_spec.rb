require 'spec_helper'

describe "CategoryPages" do

    before { visit new_category_path }
    
    describe "Category Form" do
      let(:submit) { "Create Category" }
      describe "with valid information" do
          before do
            fill_in  "category_cat_description",    with: "Electronic devices, phones, computer hardwares"
            fill_in  "category_cat_image", with: "Electronic Folder"
            fill_in  "category_cat_name", with:  "Electronics"
          end
          it "when category is valid, it must be created" do
            initial_catnumber = Category.count
            click_button  submit
            final_catnumber = Category.count
            (initial_catnumber + 1).should eql final_catnumber 
          end
      end
      
      describe "with invalid information" do
          before do
            fill_in  "category_cat_description",    with: "Electronic devices, phones, computer hardwares"
            fill_in  "category_cat_image", with: "Electronic Folder"
            fill_in  "category_cat_name", with:  "a"*51
          end
          it "when category is invalid, it must not be created" do
            initial_catnumber = Category.count
            click_button  submit
            final_catnumber = Category.count
            (initial_catnumber).should eql final_catnumber 
          end
      end
    end  
    

end
