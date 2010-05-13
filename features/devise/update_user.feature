Feature: Update user information
  In order to keep my info up-to-date
  As a user
  I want to be able to update my information
  
  Scenario: Update user information successfully
    Given I am an authenticated user
    And I am on the edit user page
    When I fill in "user_email" with "newtesting@example.com"
    And I fill in "user_password" with "newpass"
    And I fill in "user_password_confirmation" with "newpass"
    And I fill in "user_current_password" with "secretpass"
    And I press "Update"
    Then I should see "Your account has been updated successfully"
    And I should be on the home page
  
  Scenario: Wrong current password
    Given I am an authenticated user
    And I am on the edit user page
    When I fill in "user_email" with "newtesting@example.com"
    And I fill in "user_password" with "newpass"
    And I fill in "user_password_confirmation" with "newpass"
    And I fill in "user_current_password" with "wrongpass"
    And I press "Update"
    Then I should see "Current password is invalid"
    And I should be on the redisplayed edit user page
  
  Scenario: Cancel user account
    Given I am an authenticated user
    And I am on the edit user page
    When I follow "Cancel my account"
    Then I should be on the sign in page
    And my account should not be found
    