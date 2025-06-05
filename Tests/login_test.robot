*** Settings ***
Documentation    Login tests for Sauce Demo website
Resource    ../Resources/common.robot
Resource    ../Resources/login_page.robot
Resource    ../Resources/allure_config.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Test Cases ***
Valid Login with Standard User
    [Documentation]    Test login with standard_user credentials
    [Tags]    smoke    login    standard
    Given User is on Login Page
    When User enters "standard_user" and "secret_sauce"
    And User clicks login button
    Then User should be logged in successfully
    Capture Screenshot For Allure    standard_user_login_success

Invalid Login with Locked Out User
    [Documentation]    Test login with locked_out_user credentials
    [Tags]    smoke    login    locked
    Given User is on Login Page
    When User enters "locked_out_user" and "secret_sauce"
    And User clicks login button
    Then User should see error message
    Capture Screenshot For Allure    locked_out_user_login_error

Problem User Login Test
    [Documentation]    Test login with problem_user credentials
    [Tags]    smoke    login    problem
    Given User is on Login Page
    When User enters "problem_user" and "secret_sauce"
    And User clicks login button
    Then User should be logged in successfully
    Capture Screenshot For Allure    problem_user_login_success

Performance Glitch User Login Test
    [Documentation]    Test login with performance_glitch_user credentials
    [Tags]    smoke    login    performance
    Given User is on Login Page
    When User enters "performance_glitch_user" and "secret_sauce"
    And User clicks login button
    Then User should be logged in successfully
    Capture Screenshot For Allure    performance_glitch_user_login_success

Error User Login Test
    [Documentation]    Test login with error_user credentials
    [Tags]    smoke    login    error
    Given User is on Login Page
    When User enters "error_user" and "secret_sauce"
    And User clicks login button
    Then User should be logged in successfully
    Capture Screenshot For Allure    error_user_login_success

Visual User Login Test
    [Documentation]    Test login with visual_user credentials
    [Tags]    smoke    login    visual
    Given User is on Login Page
    When User enters "visual_user" and "secret_sauce"
    And User clicks login button
    Then User should be logged in successfully
    Capture Screenshot For Allure    visual_user_login_success 