Feature: Verify data transaction from database

  # Expect for this scenario will be failed because there is a unmatch the data between DB and UI
  Scenario: User verify data transaction from database are displayed correctly
    Given user fetch data from database
    When user access transaction web
    Then user verify data in the table should match from database