*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}     https://demo.itlearn360.com
${browser}   Chrome
${wait}     20seconds
${username}    Demo12
${password}    Test123456$

 
*** Test Cases ***
ElearningWebsites
    It-learning360 Code For Login


    #Open Browser         ${url}    ${browser}
    #Set Selenium Implicit Wait      ${wait}
    #Click Element    id:loginlabel
    #Input Text    id:user_login    ${username}
    #Input Text    id:user_pass   ${password}
    #Click Element    id:wp-submit
    #Close Browser

*** Keywords ***

It-learning360 code for login
    Open Browser         ${url}    ${browser}
    Set Selenium Implicit Wait      ${wait}
    Click Element    id:loginlabel
    Input Text    id:user_login    ${username}
    Input Text    id:user_pass   ${password}
    Click Element    id:wp-submit
    Close Browser
