Feature: Data Driven testing

  @ddd
  Scenario Outline: DDD Test case
    Given  url "https://reqres.in/"
    And path "/api/users?page=<pno>"
    When method GET
    Then  status 200
    And match response.page == 1

    Examples:
    | pno |
    | 1   |
    | 2   |
    | 3   |

