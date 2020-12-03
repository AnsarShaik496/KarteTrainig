Feature: This is xml validations

  Scenario: validation of xml 1
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * match xml/info/id == 101
    * match xml.info.id == "101"
    * match xml/info/tool contains "<name>Karate</name><version>0.9.6</version>"


  Scenario: validation of xml 2
    Given def xml =
    """
  <info>
      <id>101</id>
      <tool>
          <name>Karate</name>
          <version>0.9.6</version>
      </tool>
       <tool>
          <name>IntelliJ</name>
          <version>2020.2</version>
      </tool>
  </info>
  """
    * print xml
    * match xml/info/id == 101
    * match xml.info.id == "101"
    * match xml/info/tool[2] contains "<name>IntelliJ</name><version>2020.2</version>"