# Author: Raja David Hasugian

*** Settings ***
Documentation  Test Facebook web app using Cucumber syntax and Robot Framework
Resource  ../Data/input_data.robot
Resource  ../Resources/common.robot
Resource  ../Resources/facebookApp/facebookApp.robot
Resource  ../Resources/messengerApp/messengerApp.robot
Test Setup  Begin Web Test with logged in account
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Scenario: Send messages on messenger
    [Tags]  smoke
    [Template]  user send messages

    # credentials       # message_content
    ${USER_VALID}       test sending message
