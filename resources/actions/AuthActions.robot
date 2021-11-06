*Settings*

Documentation       Auth actions

*Keywords*
Go To Login Page
    Go to   ${BASE_URL}

    Wait For Elements State     css=.login-form     visible     5

Fill Credentials
    [Arguments]     ${email}        ${password}

    Fill Text       id=email            ${email}
    Fill Text       id=password         ${password}
    
Submit Credentials
    Click           css=.submit-button >> text=Entrar  

User Should Be logged In
    [Arguments]     ${expected_fullname}

    ${element}      Set Variable        css=a[href="/profile"]

    Wait For Elements State     ${element}      visible     5
    Get Text                    ${element}      equal       ${expected_fullname}