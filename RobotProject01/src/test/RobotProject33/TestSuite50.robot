*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC-51-Test-Key
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Login
    Close Browser

*** Keywords ***
Login
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
