Feature: Facebook Sign-in

  Scenario Outline: Sign-up page should be visible
    Given I launch facebook URL
    When I enter <email> and <password> and login

    Examples:
      | email                            | password     |
      | "tyler_kgiyzep_durden@tfbnw.net" | "pass@123"   |
      | "8817882917"                     | "8817882917" |

  Scenario: Table