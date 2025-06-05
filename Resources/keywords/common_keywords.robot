*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    ../../PageObjects/login_page.py    WITH NAME    LoginPage

*** Variables ***
${BROWSER}    chrome
${TIMEOUT}    10

*** Keywords ***
Open Browser To Login Page
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}

Close All Browsers
    Close All Browsers

Wait Until Element Is Visible
    [Arguments]    ${locator}    ${timeout}=${TIMEOUT}
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}

Wait Until Element Is Not Visible
    [Arguments]    ${locator}    ${timeout}=${TIMEOUT}
    Wait Until Element Is Not Visible    ${locator}    timeout=${timeout}

Element Should Be Visible
    [Arguments]    ${locator}    ${message}=Element should be visible
    Element Should Be Visible    ${locator}    ${message}

Element Should Not Be Visible
    [Arguments]    ${locator}    ${message}=Element should not be visible
    Element Should Not Be Visible    ${locator}    ${message}

Take Screenshot On Failure
    Capture Page Screenshot    filename=EMBED

Log Test Status
    [Arguments]    ${test_name}    ${status}
    Log    Test: ${test_name} - Status: ${status}    level=INFO

Verify On Login Page
    LoginPage.Verify On Login Page

Enter Username
    [Arguments]    ${username}
    LoginPage.Enter Username    ${username}

Enter Password
    [Arguments]    ${password}
    LoginPage.Enter Password    ${password}

Click Login Button
    LoginPage.Click Login Button

Is Error Message Displayed
    LoginPage.Is Error Message Displayed

Get Error Message
    ${message}=    LoginPage.Get Error Message
    RETURN    ${message} 