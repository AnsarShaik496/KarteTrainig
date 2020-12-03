Feature: karate test suite 1

  Scenario: demo of test case 1
    Given def a = 10
    And def b = 20
    When def c = a+b
    Then assert c == 30
    And print "c value is ", c
    And karate.log("Test ENded")

  Scenario: demo of test case 2
    Given def a = 10
    * def b = 20
    When def c = a*b
    Then assert c == 200
    * print "c value is ", c
    * karate.log("Test END")
