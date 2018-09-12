# Author: Raja David Hasugian

*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

# TODO
*** Variables ***


*** Keywords ***
user send messages
    [Arguments]  ${credential}  ${message}
    # TODO