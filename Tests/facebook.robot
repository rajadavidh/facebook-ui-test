# Author: Raja David Hasugian
# robot -d results/facebook tests/facebook.robot
# robot -i save -d results/facebook tests/facebook.robot

*** Settings ***
Documentation  Test Facebook web app using Cucumber syntax and Robot Framework
Resource  ../Data/input_data.robot
Resource  ../Resources/common.robot
Resource  ../Resources/facebookApp/facebookApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***


*** Test Cases ***
Scenario: Login using valid credentials
    [Tags]  smoke  login  valid
    [Template]  user login using valid credentials

    # credentials
    ${USER_VALID}

Scenario: Login using invalid credentials
    [Tags]  smoke  login  invalid
    [Template]  user login using invalid credentials

    # credentials
    ${USER_INVALID}

Scenario: Save cookies from valid credentials
    [Documentation]  This scenario is for saving cookies for reloading App without inputting credential
    [Tags]  cookies  save
    save cookies into file  ${USER_VALID}

Scenario: Load cookies to browser
    [Documentation]  This scenario is to test loading saved cookies into browser
    [Tags]  cookies  load
    load cookies from file
