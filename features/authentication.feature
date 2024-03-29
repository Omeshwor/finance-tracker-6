Feature: Authentication
  In order to use the website
  As a user
  I should be able to sign up, login and logout

Scenario: Signing up
  Given I visit the homepage
  When I fill up the sign up form
  And I confirm my email
  Then I should see that my account is confirmed

Scenario: Logging in
  Given I am a registered user
  And I visit the homepage
  When I fill in the login form
  Then I should be logged in

Scenario: Logging out
  Given I am a registered user
  And I am logged in
  And I visit the homepage
  When I click on the logout button
  Then I should be redirected to log in page
  