Feature: Facebook Sign-up

  Background: ENV Setup
    Given Setting Up the environment

  Scenario: Sign-up page should be visible
    Given I launch facebook URL
    When I enter correct email and password and login
    Then I should see home page
    