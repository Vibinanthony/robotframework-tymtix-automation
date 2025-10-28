*** Settings ***
Library    RPA.Browser.Selenium
Library    OperatingSystem

*** Variables ***
${URL}       https://www.tymtix.com/#/tpms
${BROWSER}   Chrome
${WAIT}      10s

*** Keywords ***
Open the url
    Open Available Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${WAIT}
