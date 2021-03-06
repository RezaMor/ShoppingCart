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

class Product < ActiveRecord::Base
  attr_accessible :pd_date, :pd_description, :pd_last_update, :pd_name, :pd_picture, :pd_price, :pd_qty, :category_name
  has_and_belongs_to_many :categories
  has_many :product_orders
  has_many :orders, :through => :product_orders
  
  
  def category_name
    self.categories.last.cat_name if categories.last
  end

  def category_name=(name)
    self.categories << Category.find_or_create_by_cat_name(name) unless name.blank?
  end
  
end
