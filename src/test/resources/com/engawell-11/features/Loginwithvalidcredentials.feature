```gherkin
@feature_user_login
Feature: Loginwithvalidcredentials

Background: 
  Given the user is on the Login Page

@valid-login
Scenario Outline: Login with valid credentials
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the login button
  Then the home screen loads
  And the user is navigated to the home screen successfully
  And the Google Map is displayed correctly
  And the menu bar and recenter icon are visible

  Examples:
    | email