# Author: Raja David Hasugian

*** Settings ***
Documentation  Test Facebook web app using Cucumber syntax and Robot Framework
Resource  ../Data/input_data.robot
Resource  ../Resources/common.robot
Resource  ../Resources/facebookApp/facebookApp.robot
Resource  ../Resources/groupApp/groupApp.robot
Resource  ../Resources/messengerApp/messengerApp.robot
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

Scenario: Send message on messenger
    [Tags]  smoke
    [Template]  user send messages

    # credentials       # message
    ${USER_VALID}       test message

Scenario: Open and post info on group
    [Tags]  smoke
    [Template]  user post content on group

    # credentials       # post_content
    ${USER_VALID}       test content: http://rajadavidhasugian.wordpress.com
