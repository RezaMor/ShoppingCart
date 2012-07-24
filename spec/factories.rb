FactoryGirl.define do 
    

    
   factory :category do
      cat_name                    "Electronics"
      cat_image                   "cat image folder"
   end 

  
  
   factory :product do
      pd_date                     "2011-09-23 03:23:34.234"
      pd_description              "Smart phone"
      pd_last_update              "2011-09-23 03:23:34.234"
      pd_name                     "Inside Factory"
      pd_picture                  "cell phone folder"
      pd_price                     999
      pd_qty                       20
      categories {|categories| [categories.association(:category)]}
   end
   
   factory :random_name_product, :parent => :product do
      sequence(:pd_name)           {|n| "iphone_#{n}"}
   end
   
   factory :product_order do
     po_pd_qty                      19
     product 
   end
   
end