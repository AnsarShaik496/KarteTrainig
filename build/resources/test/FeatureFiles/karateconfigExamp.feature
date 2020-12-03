Feature: Karate config suite
  Reading global variables

  Scenario: karate config test case 1
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
