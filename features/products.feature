Feature: Products

  Background:
    Given that we have some shops in the database
    Given that those shops have some products
    Given that we have a logged-in user of type merchant


  Scenario: a visitor sees products on a shop's page
    When a user visits a shop's page
    Then he should see the products sold by that shop