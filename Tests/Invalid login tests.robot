*** Settings ***
Resource    ../Keywords/Login.robot
Library    SeleniumLibrary
Resource    Keywords/Login.robot
*** Test Cases ***
Invalid password test
    [Teardown]    Close All Browsers
    [Setup]    Login in Tomtit
    Open Browser
    Input Text        ${name-xpath}    robot@test.com
    Input Text        ${pwd-xpath}    sdasdadsad
    Click Element        ${login-button-xpath}
    Wait Until Element Is Visible