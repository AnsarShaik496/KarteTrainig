Feature: Test Fixure suuite
  Demo using Background after feature, after scenario


  Background: Before Scenario
#    * print "Before scenario"
#    * configure afterScenario =
#    """
#    function {
#    karate.log("from after scenario");
#    }
#    """

    * configure afterFeature =
    """
    function {
    karate.log("from after Feature");
    }
    """


    Scenario: Test case 1
      * print "Test 1"

  Scenario: Test case 2
    * print "Test 2"