*Settings*
Documentation           Authorization test suite


Resource            ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*

User Login

    ${user}                  Factory User
    Add User From Database   ${user}

    Go To Login Page
    Fill Credentials                paulo.souza@gmail.com       pwd123
    Submit Credentials
    User Should Be logged In        Paulo de souza

