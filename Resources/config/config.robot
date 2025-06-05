*** Variables ***
# Environment URLs
${BASE_URL}    https://www.saucedemo.com
${LOGIN_URL}    ${BASE_URL}
${INVENTORY_URL}    ${BASE_URL}/inventory.html

# Browser Settings
${BROWSER}    chrome
${HEADLESS}    ${FALSE}
${TIMEOUT}    10

# Test Data - Sauce Demo Credentials
${STANDARD_USER}    standard_user
${LOCKED_USER}    locked_out_user
${PROBLEM_USER}    problem_user
${PERFORMANCE_USER}    performance_glitch_user
${ERROR_USER}    error_user
${VISUAL_USER}    visual_user
${VALID_PASSWORD}    secret_sauce

# Element Timeouts
${SHORT_TIMEOUT}    5
${MEDIUM_TIMEOUT}    10
${LONG_TIMEOUT}    20

# Screenshot Settings
${SCREENSHOT_DIR}    ${EXECDIR}/Results/screenshots
${TAKE_SCREENSHOT_ON_FAILURE}    ${TRUE} 