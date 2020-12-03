Feature:  Karate test suite 7
  Testing Soap API with external Payload file

  @Soap
  Scenario:  SOAP Api testing with Payload File
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read('../PayloadData/SoapApIData.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
#    And match response contains "98.6"
#    And match response //CelsiusToFahrenheitResult == "98.6"
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == "xml"
    And assert responseTime <= 2000