# Author: Raja David Hasugian

*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Variables ***
${LANDING_TITLE_LOC} =  xpath=//div[@id='pagelet_navigation']//div[@id='userNav']//li/a/div
${MODAL_LOC} =  xpath=//div[@class='_3ixn']
#${USER_MENU_LOC} =  xpath=//div[@id='userNavigationLabel']
${USER_MENU_LOC} =  xpath=//div[@class='_cy6 _2s24'][2]//div[@class='_4kny'][2]
#${LOGOUT_BUTTON_LOC} =  xpath=//li[@class='_54ni navSubmenu _6398 _64kz __MenuItem']//a
${LOGOUT_BUTTON_LOC} =  xpath=//div[@class='uiScrollableAreaContent']//li[8]/a


*** Keywords ***
Navigate to
    [Arguments]  ${url}
    go to  ${BASE_URL}${url}

Verify "Landing" page loaded
    [Documentation]  Ensure the page title is loaded before verifying
    wait until page contains element  ${LANDING_TITLE_LOC}  timeout=30.0

Verify page title
    ${title_text} =  get text  ${LANDING_TITLE_LOC}
    should be equal as strings  ${title_text}  kabar beranda  ignore_case=true
    # -- Alternative:
    # wait until page contains  kabar beranda

Click modal page
    [Documentation]  Click black modal window which hidden logout button
    click element  ${MODAL_LOC}

Hover to user menu
    mouse over  ${USER_MENU_LOC}
    click element  ${USER_MENU_LOC}

Click logout button
    wait until page contains element  ${LOGOUT_BUTTON_LOC}
    mouse over  ${LOGOUT_BUTTON_LOC}
    click element  ${LOGOUT_BUTTON_LOC}