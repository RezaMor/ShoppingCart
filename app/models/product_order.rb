# == Schema Information
#
# Table name: product_orders
#
#  id         :integer         not null, primary key
#  product_id :integer
#  order_id   :integer
#  po_pd_qty  :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class ProductOrder < ActiveRecord::Base
  attr_accessible :order_id, :po_pd_qty, :product_id
  
  belongs_to :product
  belongs_to :order
  
end
