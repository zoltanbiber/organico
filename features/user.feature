Feature: Users

  Background:
    Given that we have a logged-in user of type merchant

  
  Scenario: a merchant sees it's profile
    When the merchant clicks on profile navigation link
    Then he is taken to his profile page
      And he can see his details 