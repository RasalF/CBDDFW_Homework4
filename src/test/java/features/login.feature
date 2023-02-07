Feature: Login Feature

  Scenario: User should be able to login with valid email or Phone number and password
    Given user in Facebook Homepage
    And user enter valid email address
    And user enter valid password
    When user clicks on login button
    Then user should be able to successfully login

  Scenario: User should be able to login with invalid email or Phone number and valid password
    Given user in Facebook Homepage
    And user enter invalid email address
    And user enter valid password
    When user clicks on login button
    Then user should be able to see "The email or mobile number you entered isn’t connected to an account. Find your account and log in."

  Scenario: User should be able to login with valid email or Phone number and invalid password
    Given user in Facebook Homepage
    And user enter valid email address
    And user enter invalid password
    When user clicks on login button
    Then user should be able to see "The email or mobile number you entered isn’t connected to an account. Find your account and log in."

  Scenario: User should be able to login with invalid email or Phone number and invalid password
    Given user in Facebook Homepage
    And user enter invalid email address
    And user enter invalid password
    When user clicks on login button
    Then user should be able to see "The email or mobile number you entered isn’t connected to an account. Find your account and log in."
