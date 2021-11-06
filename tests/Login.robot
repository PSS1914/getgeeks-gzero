*Settings*
Documentation           Login test suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*
User login

    ${user}                  Factory User Login

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    User Should Be Logged In        ${user}

Incorrect Pass
    [Tags]          inv_pass

    ${user}         Create Dictionary       email=paulo.souza@gmail.com        password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

User not found
    [Tags]          user_404

    ${user}         Create Dictionary       email=paulo.souza@bol.com        password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

Incorret Email
    [Tags]          inv_email

    ${user}         Create Dictionary       email=paulo.gmail.com        password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Should Be Type Email

# Desafio 1 do módulo PRO
# Automatizar 3 novos casos de testes: Email obrigatório, Senha obrigatória, Campos obrigatórios
# Entrega: no Github

Empty Email 
    [Tags]      emp_email
    
    ${user}     Create Dictionary       email=              password=pwd123

    Go To Login Page
    Fill Credentials  ${user}
    Submit Credentials
    Alert Span Should Be  E-mail obrigatório

Empty Password
    [Tags]      emp_pass
    
    ${user}     Create Dictionary       email=paulo.souza@bol.com              password=   

    Go To Login Page
    Fill Credentials  ${user}
    Submit Credentials
    Alert Span Should Be  Senha obrigatória

Empty Fields
    [Tags]      emp_fields

    @{expected_alerts}      Create List
    ...                     E-mail obrigatório
    ...                     Senha obrigatória

    Go To Login Page
    Submit Credentials
    Alert Spans Should Be       ${expected_alerts}

Incomplete Email 
    [Tags]      inc_email

    ${user}     Create Dictionary       email=paulo.souza@gm              password=pwd123

    Go To Login Page
    Fill Credentials  ${user}
    Submit Credentials
    Alert Span Should Be  E-mail incompleto

#Esse útimo cenário creio se tratar de um BUG, pois é uma situação não tratada pelo DEV


