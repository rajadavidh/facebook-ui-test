# Author: Raja David Hasugian

*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

# TODO
*** Variables ***


*** Keywords ***
# Cucumber Syntax
user post content on group
    [Arguments]  ${post_content}
    # TODO
    When user selects messenger app from topbar
    And user send to a group post content:  ${post_content}
    Then Post content is displayed
