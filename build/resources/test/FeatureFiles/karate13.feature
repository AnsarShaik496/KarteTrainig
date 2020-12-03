Feature: Calling Static and non static Java classes

  Scenario: Static variable test case
     * def constants = Java.type("misc.AutomationContents");
     * print constants.devURL
     * print constants.getDevURL()

  Scenario: Non static variable TC
    * def env1 =
    """
    function()
    {
      var tmp = Java.type("misc.AutomationContents");
      var constants = new tmp();
      return constants.qaURL;
    }
    """
    * def qaUrl = call env1
    * print env1()

  Scenario:  Duplicate Non static variable TC
    * def env1 =
    """
    function()
    {

      var tmp = new (Java.type('misc.AutomationContents'));
      return tmp.qaURL;
    }
    """
    * def qaUrl = call env1
    * print qaUrl
