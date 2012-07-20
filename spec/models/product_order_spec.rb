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

require 'spec_helper'

describe ProductOrder do
  pending "add some examples to (or delete) #{__FILE__}"
end
