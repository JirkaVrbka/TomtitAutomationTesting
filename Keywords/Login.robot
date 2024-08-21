*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${project-list-element-xpath}    //h1[text()="Project list"]
${login-button-xpath}    //button[contains(@class, 'blue-button')]
${pwd-xpath}    //*[@id="Input_Password"]
${name-xpath}    //*[@id="Input_Email"]
${tomtit-login-url}    https://localhost:5001/Identity/Account/Login
*** Keywords ***
Login in Tomtit
        Open Browser        ${tomtit-login-url}
    Input Text        ${name-xpath}    robot@test.com
    Input Text        ${pwd-xpath}    123321
    Click Element        ${login-button-xpath}
        Wait Until Page Contains Element        ${project-list-element-xpath}