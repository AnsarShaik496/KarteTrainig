Feature: Rest API End to End Testing

  Scenario: Create search update delete employee Test
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"kumar","salary":"34000","age":"23"}
    When method POST
    Then status 200
    * def id = response.data.id
#    * print 'random value', id
    * match response.data.name == "kumar"

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method POST
    Then status 200

    Given url "http://dummy.restapiexample.com/public/api/v1/update/" + id
    When method POST
    Then status 200



