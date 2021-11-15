*Settings*
Documentation           BeGeek test suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup         Start Session
Test Teardown      Finish Session
 
*Test Cases*
Be a Geek
    [Tags]      BeGeek
    ${user}     Factory User    be_geek
    Do Login    ${user}
    
    Go To Geek Form
    Fill Geek Form       ${user}[geek_profile]
    Submit Geek Form
    Geek Form Should Be Success

Short Description
    [Tags]      Short_desc
    ${user}     Factory User    short_desc
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    A descrição deve ter no minimo 80 caracteres

Long Description
    [Tags]      long_desc
    ${user}     Factory User    long_desc
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    A descrição deve ter no máximo 255 caracteres

Empty Description
    [Tags]      empty_desc
    ${user}     Factory User    empty_desc
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    Informe a descrição do seu trabalho

 
Fill Whatsapp
    [Setup]                Setup For Template  user_wpp
    [Tags]                 fill_wpp               
    [Template]             Required Whatsapp   
         
    ${EMPTY}          
    62
    6299348812
    
Fill Cost
    [Setup]                Setup For Template  user_cost
    [Tags]                 fill_cost               
    [Template]             Required Value   
         
    ${EMPTY}          
    1A50B
    ABC
    ?&*   


*Keywords*
Required Whatsapp
    [Arguments]     ${whatsapp}
   
    ${short_wpp}        Create Dictionary
    ...                 whats=${whatsapp}
    ...                 desc=Programador e empresário norte-americano, que ficou conhecido internacionalmente por ser um dos fundadores do Facebook
    ...                 printer_repair=Sim
    ...                 work=Ambos
    ...                 cost=10000
       
    Fill Geek Form      ${short_wpp}
    Submit Geek Form
    Alert Span Should Be    O Whatsapp deve ter 11 digitos contando com o DDD
    Finish Session

Required Value
    [Arguments]     ${cost}
   
    ${value}            Create Dictionary
    ...                 whats=62999999999
    ...                 desc=Sou escritor e desenhista de histórias em quadrinhos, norte-americano, passei a consertar todo tipo de impressoras para complementar a renda.
    ...                 printer_repair=Sim
    ...                 work=Ambos
    ...                 cost=${cost}
       
    Fill Geek Form      ${value}
    Submit Geek Form
    Alert Span Should Be    Valor hora deve ser numérico
    Finish Session








    


