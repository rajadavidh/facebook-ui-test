# Author: Raja David Hasugian

*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections


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
    ${presence_cookie} =  get cookie  presence
    ${pl_cookie} =  get cookie  pl
    ${fr_cookie} =  get cookie  fr
    ${xs_cookie} =  get cookie  xs
    ${datr_cookie} =  get cookie  datr
    ${c_user_cookie} =  get cookie  c_user
    ${spin_cookie} =  get cookie  spin
    ${wd_cookie} =  get cookie  wd
    ${sb_cookie} =  get cookie  sb

#    log  ${presence_cookie.value}
#    log  ${pl_cookie.value}
#    log  ${fr_cookie.value}
#    log  ${xs_cookie.value}
#    log  ${datr_cookie.value}
#    log  ${c_user_cookie.value}
#    log  ${spin_cookie.value}
#    log  ${wd_cookie.value}
#    log  ${sb_cookie.value}

    remove file  ${COOKIES_DIR}/*.txt
    create file  ${COOKIES_DIR}/presence_cookie.txt  ${presence_cookie.value}
    create file  ${COOKIES_DIR}/pl_cookie.txt  ${pl_cookie.value}
    create file  ${COOKIES_DIR}/fr_cookie.txt  ${fr_cookie.value}
    create file  ${COOKIES_DIR}/xs_cookie.txt  ${xs_cookie.value}
    create file  ${COOKIES_DIR}/datr_cookie.txt  ${datr_cookie.value}
    create file  ${COOKIES_DIR}/c_user_cookie.txt  ${c_user_cookie.value}
    create file  ${COOKIES_DIR}/spin_cookie.txt  ${spin_cookie.value}
    create file  ${COOKIES_DIR}/wd_cookie.txt  ${wd_cookie.value}
    create file  ${COOKIES_DIR}/sb_cookie.txt  ${sb_cookie.value}

Loading cookies
    ${presence_cookie} =  get file  ${COOKIES_DIR}/presence_cookie.txt
    ${pl_cookie} =  get file  ${COOKIES_DIR}/pl_cookie.txt
    ${fr_cookie} =  get file  ${COOKIES_DIR}/fr_cookie.txt
    ${xs_cookie} =  get file  ${COOKIES_DIR}/xs_cookie.txt
    ${datr_cookie} =  get file  ${COOKIES_DIR}/datr_cookie.txt
    ${c_user_cookie} =  get file  ${COOKIES_DIR}/c_user_cookie.txt
    ${spin_cookie} =  get file  ${COOKIES_DIR}/spin_cookie.txt
    ${wd_cookie} =  get file  ${COOKIES_DIR}/wd_cookie.txt
    ${sb_cookie} =  get file  ${COOKIES_DIR}/sb_cookie.txt

    add cookie  presence  ${presence_cookie}
    add cookie  pl  ${pl_cookie}
    add cookie  fr  ${fr_cookie}
    add cookie  xs  ${xs_cookie}
    add cookie  datr  ${datr_cookie}
    add cookie  c_user  ${c_user_cookie}
    add cookie  spin  ${spin_cookie}
    add cookie  wd  ${wd_cookie}
    add cookie  sb  ${sb_cookie}

    sleep  2s
