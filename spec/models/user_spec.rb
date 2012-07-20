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

require 'spec_helper'

describe User do
  before do
      @user = User.new(user_last_login: "1962-09-23 03:23:34.234", user_name: "RezaMor", user_email: "moraveji.reza@gmail.com",
                       password: "password", user_password: "password", user_regdate: "1962-09-23 03:23:34.234", user_first_name:"Ali", user_last_name:"Moraveji",
                       user_phone:"040293784", user_city:"Tehran", user_state:"Tehran", user_postal_code:"2139749873")  
  end
  
  subject { @user }
    it { should respond_to(:user_last_login) }
    it { should respond_to(:user_name) }
    it { should respond_to(:user_first_name) }
    it { should respond_to(:user_last_name) }
    it { should respond_to(:user_email) }
    it { should respond_to(:password) }
    it { should respond_to(:user_password) }
    it { should respond_to(:user_regdate) }
    it { should respond_to(:user_phone) }
    it { should respond_to(:user_city) }
    it { should respond_to(:user_state) }
    it { should respond_to(:user_password_digest) }
    
    describe "The presence of attributes" do
      subject {@user}
      
      describe "presence of user_name" do
          before{ @user.user_name = " " }
          it { should_not be_valid}
      end
      describe "presence of user_last_login" do
          before{ @user.user_last_login = " " }
          it { should_not be_valid}
      end
      describe "presence of user_email" do
          before{ @user.user_email = " " }
          it { should_not be_valid}
      end
      
      
    end
  
end
