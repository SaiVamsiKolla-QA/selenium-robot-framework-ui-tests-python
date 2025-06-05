*** Settings ***
Documentation    Custom logging keywords for test execution tracking
Library    DateTime

*** Keywords ***
Log Test Suite Start
    ${timestamp}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    Log To Console    \n==========================================
    Log To Console    Test Suite Execution Started at ${timestamp}
    Log To Console    ==========================================
    Log    Test Suite Execution Started at ${timestamp}    level=INFO

Log Test Suite End
    ${timestamp}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    Log To Console    \n==========================================
    Log To Console    Test Suite Execution Completed at ${timestamp}
    Log To Console    ==========================================
    Log    Test Suite Execution Completed at ${timestamp}    level=INFO

Log Test Case Start
    [Arguments]    ${test_name}
    ${timestamp}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    Log To Console    \n------------------------------------------
    Log To Console    Starting Test: ${test_name} at ${timestamp}
    Log To Console    ------------------------------------------
    Log    Starting Test: ${test_name} at ${timestamp}    level=INFO

Log Test Case End
    [Arguments]    ${test_name}    ${status}
    ${timestamp}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    Log To Console    \n------------------------------------------
    Log To Console    Completed Test: ${test_name} with status ${status} at ${timestamp}
    Log To Console    ------------------------------------------
    Log    Completed Test: ${test_name} with status ${status} at ${timestamp}    level=INFO 