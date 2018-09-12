# Author: Raja David Hasugian

*** Settings ***
Documentation  Test Facebook web app using Cucumber syntax and Robot Framework
Resource  ../Data/input_data.robot
Resource  ../Resources/common.robot
Resource  ../Resources/facebookApp/facebookApp.robot
Resource  ../Resources/groupApp/groupApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Scenario: Open and post info on group
    [Tags]  smoke
    [Template]  user post content on group

    # credentials       # post_content
    ${USER_VALID}       test posting content: http://rajadavidhasugian.wordpress.com
