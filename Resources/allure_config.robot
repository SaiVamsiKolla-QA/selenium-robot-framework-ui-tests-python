*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Capture Screenshot For Allure
    [Arguments]    ${name}
    [Documentation]    Capture screenshot for test reporting
    Capture Page Screenshot    ${CURDIR}${/}..${/}Results${/}Screenshots${/}${name}.png 