*Settings*
Documentation           Test Helpers

*Keywords*
Add User From Database
    [Arguments]     ${user}

    Connect To Postgres
    Insert User    ${user}
    Disconnect From Database

Do Login
    [Arguments]     ${user}

    Go To Login Page
    Fill Credentials   ${user}
    Submit Credentials
    User Should Be Logged In   ${user}

Setup For Template
    [Arguments]         ${Factory}

    ${user}     Factory User    ${Factory}

    Start Session
    Go To Login Page
    Fill Credentials   ${user}
    Submit Credentials
    User Should Be Logged In   ${user}
    Go To Geek Form
    

    


    