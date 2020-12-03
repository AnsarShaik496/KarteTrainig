Feature: karate feature 3

  How to validate JSON content.

  Scenario: Json test files1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then match json.id == "101"
    * match json.tool.name == "Karate"
    * match json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: Json test files2
    Given def json =
  """
  {
  "id" : "101",
  "tool": { "name":"Karate", "version":"0.9.6"}
  }
  """
    * print json
    Then match json.id == "101"
    * match json.tool.name == "Karate"
    * match json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}