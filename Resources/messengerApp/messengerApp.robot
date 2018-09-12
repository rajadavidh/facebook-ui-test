# Author: Raja David Hasugian

*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

# TODO
*** Variables ***


*** Keywords ***
# Cucumber Syntax
user send messages
    [Arguments]  ${message_content}
    # TODO
    When user selects messenger app from topbar
    And user send to a friend message content: ${message_content}
    Then Message content is displayed