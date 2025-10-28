*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Test Setup        Open the url
Test Teardown    Close Browser

Resource    resource.robot      # we need to define this file name

*** Variables ***
${wait}     20seconds
${username}    Demo12
${password}    Test123456$


*** Test Cases ***
ElearningWebsites
    It-learning360 Code For Login

*** Keywords ***

It-learning360 code for login
    Set Selenium Implicit Wait      ${wait}
    Click Element    id:loginlabel
    Input Text    id:user_login    ${username}
    Input Text    id:user_pass   ${password}
    Click Element    id:wp-submit
    
    # ===== how to get the link from the webpage
    ${alllinks}=    Get Element Count    xpath://a       #{alllinks}= variable xpath://a(a is for link)
    Log To Console    ${alllinks}                        # Log To Console is the used to print the log on the console






