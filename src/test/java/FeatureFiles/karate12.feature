Feature: Karate test suite
  Demo of Java script functions

  Scenario: Java script test case 1
    * def fun = function() { return 123; }

    * def fun2 =
    """
    function(name){
    Karate.log(name);
    }
    """
    * print fun()
    * print fun2('Hello')