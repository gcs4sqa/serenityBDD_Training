Feature: Testing different requests on the student application

Scenario: Check that the student application can be accessed bu users
  When User sends a GET request to list, then the application must provide a valid response

  Scenario Outline: Create a new student & verify if the student is added
    When I create a new student by providing firstName <firstName> lastName <lastName> email <email> programme <programme> course <course>
    Then I verify that the student with <firstName> is created

    Examples:
    | firstName | lastName | email | programme | course |
    | Cliff     | Douglas   | cliff.douglas@aol.com | computerScience | java |
    | Honey     | Dog       | honey.dog@test.co.uk  | computerScience | biscuit |