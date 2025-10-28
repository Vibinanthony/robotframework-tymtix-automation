*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.tymtix.com/#/tpms

*** Keywords ***
Open The URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Log To Console    Browser opened successfully

Close Browser Session
    Close All Browsers
    Log To Console    Browser session closed successfully
