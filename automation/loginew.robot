*** Settings ***
Library         SeleniumLibrary
Test Setup      Open the url
Test Teardown   Close Browser
Resource        resource.robot
Test Template   ItLearn360 Login Code                  #

*** Variables ***
${time}         10 seconds
${user}         Demo12
${pass}         Test123456

*** Test Cases *** 
                       username       password
Invalid user name     Demo1234       Test123456$
Invalid password      Demo12         Test12344454
Invalid characters    abc@#          Test123456$

*** Keywords ***
ItLearn360 Login Code
    [Arguments]    ${username}    ${password}
    Maximize browser Window
    Set Selenium Implicit Wait    ${time}
    Click Element    id:loginlabel
    Input Text    id:user_login    ${user}
    Input Text    name:pwd         ${pass}
    Click Element    name:wp-submit

# ===== how to get the link from the webpage
    ${alllinks}=    Get Element Count    xpath://a       #{alllinks}= variable xpath://a(a is for link)
    Log To Console    ${alllinks}