# == Schema Information
#
# Table name: categories
#
#  id              :integer         not null, primary key
#  cat_name        :string(50)      default(""), not null
#  cat_description :string(255)
#  cat_image       :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Category < ActiveRecord::Base
  attr_accessible :cat_description, :cat_image, :cat_name
  has_and_belongs_to_many :products
  has_many :product_orders, :through => :products
  has_many :orders, :through => :product_orders
end
