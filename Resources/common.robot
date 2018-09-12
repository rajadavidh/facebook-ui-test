# Author: Raja David Hasugian

*** Settings ***
Documentation  This module is for open and close browser
Library  SeleniumLibrary


*** Variables ***
${BROWSER}


*** Keywords ***
Begin web test
    open browser  about:blank  ${BROWSER}
#    maximize browser window
    # TODO Setup login step as starting point
    # Source: https://stackoverflow.com/questions/50101468/robot-framework-and-dry-function-steps-repeat-testcase-steps

End web test
    close all browsers
