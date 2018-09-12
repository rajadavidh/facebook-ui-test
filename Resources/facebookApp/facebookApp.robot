# Author: Raja David Hasugian

*** Settings ***
Documentation  User login test
Library  SeleniumLibrary
Library  OperatingSystem
Resource  ./landing.robot
Resource  ./login.robot


*** Variables ***


*** Keywords ***
# Sample test cases from:
# https://developers.facebook.com/docs/facebook-login/testing-your-login-flow

# Cucumber Syntax
user login using valid credentials
    [Arguments]  ${credential}
    When user submits credentials from  ${credential}
    And user selects logout button on "Landing" page
    Then "Login" page is displayed

user login using invalid credentials
    [Arguments]  ${credential}
    When user submits credentials from  ${credential}
    Then "Login" page is displayed with error message


# Cucumber Keywords
user submits credentials from
    [Documentation]  Submitting dictionary of username and password
    [Arguments]  ${credential}
    landing.Navigate to  facebook.com
    login.Submit credentials  ${credential.email}  ${credential.password}

user selects logout button on "Landing" page
    landing.Click modal page
    landing.Hover to user menu
    landing.Click logout button

"Login" page is displayed
    login.Verify "Login" page loaded

"Login" page is displayed with error message
    login.Verify login error message


# Procedural Keywords
save cookies into file
    [Arguments]  ${credential}
    user submits credentials from  ${credential}
    login.Saving cookies

load cookies from file
    landing.Navigate to  facebook.com
    login.Loading cookies
    landing.Navigate to  facebook.com
    landing.Verify "Landing" page loaded
