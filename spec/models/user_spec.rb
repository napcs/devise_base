require 'spec_helper'

describe User do
  before(:each) do
    @user = User.new( 
      :email => 'test@example.com',
      :password => 'secretpass',
      :password_confirmation => 'secretpass'
    )
  end
  
  it "is valid with valid attributes" do
    @user.should be_valid
  end
  
  it "is invalid when email is blank" do
    @user.email = ''
    @user.should_not be_valid
  end
  
  it "is invalid when email is not a valid email format" do
    @user.email = 'test'
    @user.should_not be_valid
  end
  
  it "is invalid when password is blank" do
    @user.password = ''
    @user.password_confirmation = ''
    @user.should_not be_valid
  end
  
  it "is invalid when password_confirmation doesn't match password" do
    @user.password_confirmation = 'wrongpass'
    @user.should_not be_valid
  end
  
  it "is invalid if the password is less than 6 characters" do
    @user.password = 'passw'
    @user.password_confirmation = 'passw'
    @user.should_not be_valid
  end
end
