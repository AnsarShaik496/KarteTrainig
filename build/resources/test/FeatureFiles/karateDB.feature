Feature: Karate Db Testing
  Interacting with DB

  Background: dbInIt
    * def db = Java.type('misc.MyDbUtil');

  Scenario: Select statement test case
    * def rows = db.selectStatement("select * from tools")
    * print rows