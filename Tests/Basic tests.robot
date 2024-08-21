*** Settings ***
Resource    Keywords/variables-for-editor.robot
Resource    ../Keywords/DashboardPage.robot
Resource    ../Keywords/Login.robot
Library    SeleniumLibrary
Resource   Keywords/Login.robot
*** Test Cases ***
MyTest2
    Fail
    Keywords/variables-for-editor.robot.New keyword
Create project
    [Teardown]    Close All Browsers
    [Setup]    Login in Tomtit
    Click Element        ${create-project}
    Sleep        5s
    Sleep        5s
Login in Tomtit Test
    [Tags]    login
    [Setup]    Login in Tomtit
    [Teardown]    Close All Browsers
    Wait Until Element Is Visible        ${create-project}