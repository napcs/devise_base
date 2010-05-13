Feature: Sign up
  In order to log into the system
  As a user
  I want to register a new account with the system
  
  Scenario: Sign up successfully
    Given I am not authenticated
    And I am on the sign up page
    And I fill in "user_email" with "testing@example.com"
    And I fill in "user_password" with "secretpass"
    And I fill in "user_password_confirmation" with "secretpass"
    And I press "Sign up"
    Then I should see "You have signed up successfully"
    And I should be on the sign in page
  
  Scenario: Sign up unsuccessful
    Given I am not authenticated
    And I am on the sign up page
    And I fill in "user_email" with "testing"
    And I fill in "user_password" with "secretpass"
    And I fill in "user_password_confirmation" with "secretpass"
    And I press "Sign up"
    Then I should not see "You have signed up successfully"
    And I should be on the redisplayed sign up page
 
