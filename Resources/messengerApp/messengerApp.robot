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
    When user selects messenger app from topbar
    And user send to a friend message content  ${message_content}
    Then message content is displayed


# Cucumber Keywords
user selects messenger app from topbar
    # TODO

user send to a friend message content
    [Arguments]  ${message_content}
    # TODO

message content is displayed
    # TODO


# Procedural Keywords
