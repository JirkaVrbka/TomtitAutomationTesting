*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Login.robot
*** Test Cases ***
New test case
        Open Browser        ${tomtit-login-url}
    Close All Browsers