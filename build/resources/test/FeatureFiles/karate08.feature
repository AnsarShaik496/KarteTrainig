Feature:  Karate test suite 8
  Testing RESTFULL API

  @Soap
  Scenario:  RESTFull Api testing
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method GET
    Then status 200
    And match response.status == "success"
    And match response.status == "#string"
    And match response.data == "#array"
    * print response.data[0].employee_name