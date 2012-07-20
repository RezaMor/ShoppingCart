# == Schema Information
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  user_name            :string(50)      not null
#  user_password_digest :string(255)     not null
#  user_email           :string(255)     not null
#  user_first_name      :string(50)      not null
#  user_last_name       :string(50)      not null
#  user_phone           :string(32)      default(""), not null
#  user_city            :string(100)     default(""), not null
#  user_state           :string(32)      default(""), not null
#  user_postal_code     :string(10)      default(""), not null
#  user_regdate         :datetime        not null
#  user_last_login      :datetime        not null
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessor :user_password
  attr_accessible :user_last_login, :user_name, :user_email, :password, :user_password, :user_password_confirmation, :user_regdate, :user_first_name, :user_last_name, :user_phone, :user_city, :user_state, :user_postal_code
  validates :user_name, :presence => true
   
    def password
      @user_password
    end
    
    def password=(vir_pass)
      @user_password =  vir_pass
    end
   
  
end
