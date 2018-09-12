# Author: Raja David Hasugian

*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Variables ***
${LOGIN_TITLE_LOC} =  xpath=//div[@class='_ihd _3ma mbs _6n _6s _6v']
${USERNAME_LOC} =  id=email
${PASSWORD_LOC} =  id=pass
${SUBMIT_BUTTON_LOC} =  id=u_0_2
${COOKIES_DIR} =  /Users/rajadavid/PycharmProjects/facebook-ui-test/Data/cookies
${ERROR_POPUP} =  xpath=//div[@class='_4rbf _53ij']


*** Keywords ***
Verify "Login" page loaded
    wait until page contains element  ${LOGIN_TITLE_LOC}

Submit credentials
    [Arguments]  ${username}  ${password}
    Fill username  ${username}
    Fill password  ${password}
    Click submit
    # sleep  5s

Fill username
    [Arguments]  ${username}
    input text  ${USERNAME_LOC}  ${username}

Fill password
    [Arguments]  ${password}
    input text  ${PASSWORD_LOC}  ${password}

Click submit
    mouse over  ${SUBMIT_BUTTON_LOC}
    click element  ${SUBMIT_BUTTON_LOC}

Verify login error message
    wait until page contains element  ${ERROR_POPUP}

Saving cookies
    # Reference saving files:
    # http://seleniummaster.com/sitecontent/index.php/selenium-robot-framework-menu/selenium-robot-framework-python-menu/253-how-to-read-values-from-text-file-in-robot-framework
    # https://stackoverflow.com/questions/29397198/how-to-write-a-variable-into-a-file
    [Arguments]  ${customer_name}
    ${cookie_value} =  get cookie value  PHPSESSID
    ${dict} =  Create Dictionary  PHPSESSID=${cookie_value}
    # Closing browser so that cookies saved as a file
    remove file  ${COOKIES_DIR}/facebook_cookie.txt
    create file  ${COOKIES_DIR}/facebook_cookie.txt  ${cookie_value}

Loading cookies
    [Arguments]  ${customer_name}
    ${cookie_value} =  get file  ${COOKIES_DIR}/facebook_cookie.txt
    add cookie  PHPSESSID  ${cookie_value}
