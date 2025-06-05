*** Variables ***
# Test Users
&{ADMIN_USER}    username=admin    password=admin123    role=Administrator
&{STANDARD_USER}    username=user    password=user123    role=Standard
&{GUEST_USER}    username=guest    password=guest123    role=Guest

# Test Data Sets
@{VALID_USERNAMES}    user1    user2    user3    user4    user5
@{VALID_PASSWORDS}    pass1    pass2    pass3    pass4    pass5
@{INVALID_USERNAMES}    invalid1    invalid2    invalid3
@{INVALID_PASSWORDS}    wrong1    wrong2    wrong3

# Error Messages
&{ERROR_MESSAGES}
...    empty_username=Username is required
...    empty_password=Password is required
...    invalid_credentials=Invalid username or password
...    account_locked=Your account has been locked
...    session_expired=Your session has expired

# Test URLs
&{URLS}
...    login=/login
...    home=/home
...    profile=/profile
...    settings=/settings
...    logout=/logout

# Test Data for Form Fields
&{FORM_DATA}
...    first_name=John
...    last_name=Doe
...    email=john.doe@example.com
...    phone=1234567890
...    address=123 Test Street 