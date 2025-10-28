*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${user}    Demo12
${pass}    Test123456$
${time}    10s

*** Test Cases ***
ELearningWebsite
    Itlearn360 Login Code

*** Keywords ***
Itlearn360 Login Code
    It-learning360 code for login      ${user}    ${pass}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${time}
    Click Element    id:loginlabel
    Input Text    id:user_login    ${user}
    Input Text    id:user_pass     ${pass}
    Click Element    name:wp-submit
    Element Text Should Be    xpath://*[@id="login-list"]/li[1]/a    Dashboard
