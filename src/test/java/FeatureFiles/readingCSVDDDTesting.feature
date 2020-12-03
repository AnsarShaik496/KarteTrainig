Feature: Reading CSV data DDT Testing

  Background:
    * def data = read('../PayloadData/Data.csv')

 Scenario Outline: CSV DDT Testing
      * print "<custId> ,<custName> ,<age> ,<yob>"
       * def json1 = {"last_name" : <custName>}
       * print json1

   Examples:
     | data |

  Scenario Outline: CSV DDT Testing
#    * print "<custid>, <custname>, <age>, <yob>"
    * def json1 = {"last_name" : <custname>}
    * print json1

    Examples:
      | read('../PayloadData/data.csv') |
