Feature: Purchase ticket

Scenario: Buy a ticket from Mexico City to London
  Given I open the browser
   When I am on 'https://blazedemo.com/index.php' website
   Then I verify that 'Welcome to the Simple Travel Agency!' is visible
   When I click on 'destination of the week! The Beach!' link
   Then I verify that link has open in new tab and the string called 'vacation' is included in url
   When I navigate back to home page
    And I select departure city as 'Mexico City' and 'London' as destination city
    And I select most cheap flight
   Then I verify that i redirected to 'purchase' page
    And I verify that 'Total Cost' field is visible in the purchase page
   When I click on purchase flight button
   Then I verify i redirected to purchase 'confirmation' page