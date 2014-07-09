Feature: Shops

  Background: 
    Given that we have a logged-in user of type merchant
    Given that we have some tags
    Given that we have at least five shops and they have tags

  Scenario: a visitor sees the first 5 shops on the homepage
    When the user visits the homepage
    Then he should see the first five shops on the page
     And he should also see the shops' tags


  Scenario: a visitor sees the profile of an individual shop
    When the user is on the homepage
      And he clicks on the VIEW button next to a shop's name
    Then he is taken to that shop's profile page
      And he can see all the information about that shop


