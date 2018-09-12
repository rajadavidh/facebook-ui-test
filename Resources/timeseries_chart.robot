*** Settings ***
Library  SeleniumLibrary
Resource  ./itemlist.robot


*** Variables ***


*** Keywords ***
Hover to first item on chart
    [Arguments]  ${locator_for_all_items}
    itemlist.Hover and click first item on list  ${locator_for_all_items}

Hover to nth item on chart
    [Arguments]  ${locator_per_item}
    itemlist.Hover and click nth item on list  ${locator_per_item}

Verify element should have text
    [Arguments]  ${locator}  ${values}
    itemlist.Verify item should have text  ${locator}  ${values}

Verify element should have class
    [Arguments]  ${locator}  ${classname}
    itemlist.Verify item should have class  ${locator}  ${classname}