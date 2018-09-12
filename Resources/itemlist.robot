*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Get number of list items
    [Arguments]  ${items_locator}
    # Cari locator yang mengandung semua list
    ${num_items} =  get element count  ${items_locator}
    [Return]  ${num_items}

Verify list is not empty
    [Arguments]  ${items_locator}  ${expected_num_items}
    # Total number listnya harus 10
    ${total_items} =  Get number of list items  ${items_locator}
    should be equal as numbers  ${total_items}  ${expected_num_items}

Verify list has n items
    [Arguments]  ${items_locator}  ${expected_num_items}
    # Total number listnya harus 10
    ${total_items} =  Get number of list items  ${items_locator}
    should be true  ${total_items} >= ${expected_num_items}

Verify list is empty
    [Arguments]  ${empty_items_locator}
    ${empty_message} =  get text  ${empty_items_locator}
    should contain any  ${empty_message}  No results found

Hover and click first item on list
    [Arguments]  ${locator_for_all_items}
    mouse over  ${locator_for_all_items}
    click element  ${locator_for_all_items}

Hover and click nth item on list
    [Arguments]  ${locator_per_item}
    mouse over  ${locator_per_item}
    click element  ${locator_per_item}

#Hover to nth item_initial
#    [Arguments]  ${css_locator_per_item}  ${item_num}
#    # Coba klik bar-char ke 3 3
#    ${locator_per_item} =  catenate  SEPARATOR=  ${css_locator_per_item} ${item_num})
#    mouse over  ${locator_per_item}
#    click element  ${locator_per_item}

Get item text values by position
    [Arguments]  ${locator_per_item}
    # https://stackoverflow.com/questions/25580569/get-value-of-an-input-box-using-selenium-python
    # pakai 'get text' karena 'get value' untuk ambil nilai dari form
    ${value} =  get text  ${locator_per_item}
    [Return]  ${value}

Get item class values by position
    [Arguments]  ${locator_per_item}
    ${attribute_value} =  get element attribute  ${locator_per_item}  class
    [Return]  ${attribute_value}

Verify property values are available from search
    [Arguments]  ${found}
    # https://stackoverflow.com/questions/35015039/robotframework-how-to-evaluate-boolean-value-returned-from-javascript-call
    Should Be Equal  ${found}  ${True}

Verify item should have text
    [Arguments]  ${locator}  ${values}
    ${text} =  get text  ${locator}
    should contain any  ${text}  ${values}

Verify item should have class
    [Arguments]  ${locator}  ${classname}
    # https://stackoverflow.com/questions/43466718/robot-framework-how-to-check-class
    ${class} =  get element attribute  ${locator}  class
    should contain  ${class}  ${classname}

Verify tooltip is available
    [Arguments]  ${tooltip_locator}
    wait until page contains element  ${SEVERITY_TOOLTIP_LOC}  timeout=10.0
#    page should contain element  ${tooltip_locator}