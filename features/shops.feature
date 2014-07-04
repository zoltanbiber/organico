Feature: Shops

  Background: 
    Given that we have some tags
    Given that we have at least ten shops and they have tags

  Scenario: a visitor sees the first 10 shops on the homepage
    When the user visits the homepage
    Then he should see the first ten shops on the page
     And he should also see the shops' tags
