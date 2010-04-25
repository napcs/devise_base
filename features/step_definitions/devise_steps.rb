Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^I signed up as "([^\"]*)" with password "([^\"]*)"$/ do |email, password|
  @user = User.create!(:email => email,
           :password => password,
           :password_confirmation => password)
end

Given /^I confirmed my email address$/ do
  @user.confirm!
end

Given /^my account was locked$/ do
  @user.lock_access!
end

Given /^I am an authenticated user$/ do
  email = 'testing@example.com'
  password = 'secretpass'

  Given %{I signed up as "#{email}" with password "#{password}"} 
  And %{I confirmed my email address}
  And %{I go to the sign in page}
  And %{I fill in "user_email" with "#{email}"}
  And %{I fill in "user_password" with "#{password}"}
  And %{I press "Sign in"}
end

