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
  pending "add some examples to (or delete) #{__FILE__}"
end
