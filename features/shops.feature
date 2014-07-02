Feature: Shops

  Background: 
    Given that we have at least 10 shops in the database

  Scenario: a visitor sees the first 10 shops on the homepage
    When the user visits the homepage
    Then he should see the first 10 shops on the page
