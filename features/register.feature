Feature: Register 
  
  Background:
    Given that a user is on the registration page
  
  Scenario: a user signs up as a shopper
    When a user chooses to be a shopper
      And the user completes the form with valid shopper information
    Then the shopper's account should be created
      And their user type (shopper) should be recorded

  Scenario: a user signs up as a merchant
    When a user chooses to be a merchant
      And the user completes the form with valid merchant information
    Then the merchant's should be created
      And their user type (merchant) should be recorded

