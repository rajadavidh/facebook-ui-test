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

End web test
    close all browsers
