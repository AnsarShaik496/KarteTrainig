Feature: Writing Response to File

  Scenario: Example 1
    * def lib = Java.type('misc.Utils')
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    * print response
    * lib.writeToFile("res.json", response)
    * def res1 = read("classpath:res.json")
    * print res1

    Scenario:  Example 2
      * def lib = Java.type('misc.Utils')
      Given url "https://reqres.in/api/users/2"
      When method get
      Then status 200
      * def res2 = get response $.data
      * lib.writeToFile("res2.json", res2)
      * def res = read("classpath:res2.json")
      * print res

      #(name)
      Scenario: Parsing Response Data to JsonMessage Or Files
        * def lib = Java.type('misc.Utils')
        Given url "https://reqres.in/api/users/2"
        When method get
        Then status 200
        * print response.data.last_name
        * def name = response.data.last_name
        * def json1 = {"lastName" : #(name)}
        * print json1

        Scenario: Paramterized value to Files
          * def custId = 1234
          * def res = read("classpath:res3.json")
          * print res