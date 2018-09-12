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
    When user selects group app from sidebar
    And user send to a group post content  ${post_content}
    Then post content is displayed


# Cucumber Keywords
user selects group app from sidebar
    # TODO

user send to a group post content
    [Arguments]  ${post_content}
    # TODO

post content is displayed
    # TODO


# Procedural Keywords
