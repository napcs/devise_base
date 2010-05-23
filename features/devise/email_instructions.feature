Feature: Email instructions
  In order to correct issues with my account
  As a user
  I want to receive instructions via email
 
  Scenario: Resend email confirmation instructions
    Given I am not authenticated
    And I signed up as "johndoe@example.com" with password "secretpass"
    And I go to the resend confirmation instructions page
    When I fill in "user_email" with "johndoe@example.com"
    And I press "Resend"
    Then I should see "instructions about how to confirm your email address"
    And an email should be sent to "johndoe@example.com" with "Confirm my email" in the body

  Scenario: Send password change instructions
    Given I am not authenticated
    And I signed up as "johndoe2@example.com" with password "secretpass"
    And I confirmed my email address
    And I go to the send password instructions page
    When I fill in "user_email" with "johndoe2@example.com"
    And I press "Send"
    Then I should see "instructions about how to reset your password"
    And an email should be sent to "johndoe2@example.com" with "Change my password" in the body

  Scenario: Resend unlock account instructions
    Given I am not authenticated
    And I signed up as "johndoe3@example.com" with password "secretpass"
    And I confirmed my email address
    And my account is locked
    And I go to the send unlock instructions page
    When I fill in "user_email" with "johndoe3@example.com"
    And I press "Resend"
    Then I should see "instructions about how to unlock your account"
    And an email should be sent to "johndoe3@example.com" with "Unlock my account" in the body

