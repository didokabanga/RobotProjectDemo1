*** Settings ***
Library           SeleniumLibrary

*** Variables ***
@{CREDENTIALS}    Admin    admin123
&{LOGIN}          Username=Admin    Password=admin123
${url_Orange}     https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
TC-Test-Var1
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Close Browser

TC-Test-Var-Scalar
    Open Browser    ${url_Orange}    chrome
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Close Browser

TC-03-Test-Var-List
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Input Text    id=txtUsername    @{CREDENTIALS} [0]
    Input Password    id=txtPassword    @{CREDENTIALS} [1]
    Click Button    id=btnLogin
    Close Browser

TC-04-Test-Var-Dict
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Input Text    id=txtUsername    &{LOGIN} [Username]
    Input Password    id=txtPassword    &{LOGIN} [Password]
    Click Button    id=btnLogin
    Close Browser

TC-05-Test-Var-Envir
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Input Text    id=txtUsername    &{LOGIN} [Username]
    Input Password    id=txtPassword    &{LOGIN} [Password]
    Click Button    id=btnLogin
    Close Browser
    Log To Console    %{username} ran this test on %{os}
