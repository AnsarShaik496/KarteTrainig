Feature: Karate test suite 10

  using url and path
  Scenario:  url and path usage test case 1
    Given  url "https://reqres.in/"
    And path "/api/users?page=2"
    When method GET
    Then  status 200
    And match response.page == 1

  Scenario:  url and path usage test case 2
    Given  url "https://reqres.in/"
    And path "/api/users"
    And param page = 2
    When method GET
    Then  status 200
    And match response.page == 1
