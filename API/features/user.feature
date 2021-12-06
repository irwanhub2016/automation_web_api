@user
Feature: User

  @smoke-test @continue
  Scenario: user able to create user
    When user try to create new user
    Then user verify the request users created successfully

  @smoke-test @continue
  Scenario: user able to get list user
    When user try to get list user
    Then user verify the request users returned successfully