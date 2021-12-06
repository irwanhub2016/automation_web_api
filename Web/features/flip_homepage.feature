Feature: User verify flip homepage

  @continue
  Scenario Outline: User able to verifying buttons on flip homepage
    Given user open home page
    When user able to click on '<button_name>' button
    Then user should redirect to the correct page
    Examples:
    | button_name |
    | Bantuan     |
    | Karir       |
    | Biaya       |
    | Masuk       |