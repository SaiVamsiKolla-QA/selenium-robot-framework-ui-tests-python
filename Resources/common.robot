*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}           chrome
${URL}              https://www.saucedemo.com
${TIMEOUT}          20s

*** Keywords ***
Begin Web Test
    [Documentation]    Opens browser and navigates to the website
    Set Selenium Speed    0.5s
    Set Selenium Timeout    ${TIMEOUT}
    Open Browser    about:blank    ${BROWSER}    options=add_argument("--start-maximized")
    Set Window Size    1920    1080

End Web Test
    [Documentation]    Closes browser
    Close All Browsers 