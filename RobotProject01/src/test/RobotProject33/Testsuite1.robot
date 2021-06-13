*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Test1-Firefox
    Open Browser    https://robotframework.org/    firefox

Test2-Chrome

Test3-Chrome
    Open Browser    https://robotframework.org/    chrome
    Close Browser
