Feature: List LI

  Scenario: Select item from List
    Given I launch site Url
    When I click on dropdown
    And I select a item
    Then Item should be selected
    