*** Settings ***
Library    SeleniumLibrary
Resource   resource.robot
Resource   locators.robot

Test Setup     Open The URL
Test Teardown  Close Browser Session

*** Variables ***
${USERNAME}        *******************
${PASSWORD}        ******
${WAIT}            30s
${ADD_MAILID}      **********
${FIRSTNAME}       Vibin
${LASTNAME}        Anthony
${COMPANYNAME}     Tymtix
${ADDRESS}         Old Madras Road, Bangalore
${CITY}            Thoothukudi
${POSTAL_NUMBER}   1234566
${PHONE_NUMBER}    +91 123456789

*** Test Cases ***
Navigate to Homepage after login
    Sleep    5s

    Wait Until Element Is Visible    ${NAVBAR_LINK_2}    10s
    Click Element    ${NAVBAR_LINK_2}
    Wait Until Element Is Visible    ${NAVBAR_LINK_3}    10s
    Click Element    ${NAVBAR_LINK_3}

    Sleep    3s
    Wait Until Element Is Not Visible    ${LOADER_OVERLAY}    ${WAIT}

    Wait Until Element Is Visible    ${PRODUCT_CHECKBOX_1}    10s
    Click Element    ${PRODUCT_CHECKBOX_1}
    Click Element    ${PRODUCT_CHECKBOX_2}
    Click Element    ${PRODUCT_CHECKBOX_3}

    Wait Until Element Is Visible    ${BUY_NOW_BUTTON}    10s
    Click Element    ${BUY_NOW_BUTTON}

    Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON}    10s
    Click Element    ${ADD_TO_CART_BUTTON}
    Sleep    3s

    Wait Until Element Is Visible    ${EMAIL_FIELD}    20s
    Click Element    ${EMAIL_FIELD}
    Input Text       ${EMAIL_FIELD}    ${USERNAME}

    Click Element    ${PASSWORD_FIELD}
    Input Text       ${PASSWORD_FIELD}    ${PASSWORD}
    Execute Javascript    document.getElementById('password').dispatchEvent(new Event('change'))
    Sleep    3s

    Click Button    Sign In
    Wait Until Location Contains    /store    30s
    Wait Until Element Is Visible    ${CART_ICON}    30s

    Click Element    ${CART_ICON}
    Sleep    2s

    Wait Until Element Is Visible    ${CHECKOUT_BUTTON}    10s
    Click Element    ${CHECKOUT_BUTTON}
    Sleep    2s

    Wait Until Element Is Visible    ${EMAIL_BILLING}    10s
    Input Text    ${EMAIL_BILLING}      ${ADD_MAILID}
    Input Text    ${FIRSTNAME_BILLING}  ${FIRSTNAME}
    Input Text    ${LASTNAME_BILLING}   ${LASTNAME}
    Input Text    ${COMPANY_BILLING}    ${COMPANYNAME}
    Input Text    ${ADDRESS_BILLING}    ${ADDRESS}
    Sleep    2s

    Wait Until Element Is Visible    id=select_country    10s
    Select From List By Label        id=select_country    INDIA
    Log To Console                   Country selected: INDIA

    Input Text    ${CITY_BILLING}      ${CITY}
    Input Text    ${POSTAL_CODE}       ${POSTAL_NUMBER}
    Input Text    ${PHONE_NUMBER_PATH}      ${PHONE_NUMBER}
    Log To Console                     Billing details completed

    Sleep    3s
