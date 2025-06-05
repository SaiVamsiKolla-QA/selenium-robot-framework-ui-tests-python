*** Settings ***
Library    SeleniumLibrary
Resource    common.robot

*** Variables ***
${USERNAME_FIELD}    id=user-name
${PASSWORD_FIELD}    id=password
${LOGIN_BUTTON}     id=login-button
${ERROR_MESSAGE}    css=h3[data-test='error']

*** Keywords ***
User is on Login Page
    [Documentation]    Verifies user is on login page
    Go To    ${URL}
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Page Should Contain Element    ${LOGIN_BUTTON}

User enters "${username}" and "${password}"
    [Documentation]    Enters username and password
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}

User clicks login button
    [Documentation]    Clicks login button
    Click Element    ${LOGIN_BUTTON}

User should be logged in successfully
    [Documentation]    Verifies successful login
    Wait Until Location Contains    inventory.html
    Page Should Contain Element    id=shopping_cart_container

User should see error message
    [Documentation]    Verifies error message is displayed
    Wait Until Element Is Visible    ${ERROR_MESSAGE}
    Element Should Be Visible    ${ERROR_MESSAGE} 