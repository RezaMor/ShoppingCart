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
      describe "presence of user_first_name" do
          before{ @user.user_first_name = " " }
          it { should_not be_valid}
      end
      describe "presence of user_last_name" do
          before{ @user.user_last_name = " " }
          it { should_not be_valid}
      end
      describe "presence of password" do
          before{ @user.password = " " }
          it { should_not be_valid}
      end      
      describe "presence of user_password" do
          before{ @user.user_password = " " }
          it { should_not be_valid}
      end
      describe "presence of user_password_confirmation" do
          before{ @user.user_password = " " }
          it { should_not be_valid}
      end
      describe "presence of user_regdate" do
          before{ @user.user_regdate = " " }
          it { should_not be_valid}
      end
      describe "presence of user_phone" do
          before{ @user.user_phone = " " }
          it { should_not be_valid}
      end
      describe "presence of user_city" do
          before{ @user.user_city = " " }
          it { should_not be_valid}
      end
      describe "presence of user_state" do
          before{ @user.user_state = " " }
          it { should_not be_valid}
      end
      describe "presence of user_password_digest" do
          before{ @user.user_password_digest = " " }
          it { should_not be_valid}
      end              
    end
    
#    describe "when attributes are too long" do
#      subject {@user}
#      describe "Long user_name" do
#          before  { @user.user_name = "a"*51 }
#          it  { should_not be_valid }
#      end
#      describe "Long user_first_name" do
#           before  { @user.user_first_name = "a"*51 }
#           it  { should_not be_valid }
#      end
#      describe "Long user_last_name" do
#           before  { @user.user_last_name = "a"*51 }
#           it  { should_not be_valid }
#      end
#      describe "Long user_phone" do
#           before  { @user.user_phone = "a"*33 }
#           it  { should_not be_valid }
#      end
#      describe "Long user_city" do
#           before  { @user.user_city = "a"*101 }
#           it  { should_not be_valid }
#      end
#      describe "Long user_state" do
#           before  { @user.user_state = "a"*33 }
#           it  { should_not be_valid }
#      end
#      describe "Long user_postal_code" do
#           before  { @user.user_postal_code = "a"*11 }
#           it  { should_not be_valid }
#      end
#    end
#    
    
    describe "when emails should be valid" do
      it "should be valid" do
        emails = %w[xxx.yyy@mmm.com xxx-yyy@mmm.com xxx_yyy@mmm.com]
        emails.each do |e_address|
          @user.user_email = e_address
          @user.should be_valid
        end
      end
    end
    
    describe "when emails should not be  valid" do
      it "should not be valid" do
        emails = %w[xxx+yyy@mmm.com xxx-yyy@m-m.com xxx_yyy@m.m.com xxx,yyy@mmm.com]
        emails.each do |e_address|
          @user.user_email = e_address
          @user.should_not be_valid
         end
       end
     end
     
  describe "when phones should be valid" do
    it "should be valid" do
      phones = %w[00982122047028 +98(21)22047028 +98(21)22-01-475-90 +1(234)97398-3497]
      phones.each do |phone|
        @user.user_phone = phone
        @user.should be_valid
      end
    end
  end
  
  describe "when phones should not be  valid" do
    it "should not be valid" do
      phones = %w[982122047028 +98()22047028 +98$(21)22-01-475-90 +1(234)97398-3497-]
      phones.each do |phone|
        @user.user_phone = phone
        @user.should_not be_valid
       end
     end
   end
     
     

     
  
end
