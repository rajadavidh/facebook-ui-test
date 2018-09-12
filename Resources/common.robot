# Author: Raja David Hasugian

*** Settings ***
Documentation  This module is for open and close browser
Library  SeleniumLibrary
Resource  ./facebookApp/facebookApp.robot


*** Variables ***
${BROWSER}


*** Keywords ***
Begin Web Test with logged in account
    [Documentation]  Must run `robot -i save -d results tests/facebook.robot` first
    Begin web test
    # Setup login step as starting point. Reference:
    # https://stackoverflow.com/questions/50101468/robot-framework-and-dry-function-steps-repeat-testcase-steps
    facebookApp.load cookies from file

Begin web test
    open browser  about:blank  ${BROWSER}
#    maximize browser window

End web test
    close all browsers
