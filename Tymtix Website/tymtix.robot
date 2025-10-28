*** Settings ***
Library    RPA.Browser.Selenium
Resource   resource_rpa.robot

Test Setup     Open the url
Test Teardown  Close All Browsers

*** Variables ***
${USERNAME}    vibin.a@nextrive.com
${PASSWORD}    Test@123
${WAIT}        30s
${addmailid}    vibin.a@nextrive.com
${firstname}    Vibin
${lastname}    Anthony
${companyname}    Tymtix
${address}    4/4-7, North Muslim Street, Kurumbur
${city}    Thoothukudi
${postal}    628307
${phonenumb}    +91 9994974569

*** Tasks ***
Navigate to Homepage after login
    Sleep    5s

    # Navigate Homepage
    Wait Until Element Is Visible    xpath://*[@id="navbar-main-collapse"]/ul/li[2]/a    10s
    Click Button    xpath://*[@id="navbar-main-collapse"]/ul/li[2]/a
    Wait Until Element Is Visible    xpath://*[@id="navbar-main-collapse"]/ul/li[3]/a    10s
    Click Button    xpath://*[@id="navbar-main-collapse"]/ul/li[3]/a

    Sleep    3s
    Wait Until Element Is Not Visible    css:div.loading.ng-scope    ${WAIT}

    # Select Products
    Wait Until Element Is Visible    xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[2]/label/span    10s
    Click Button    xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[2]/label/span
    Click Button    xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[3]/label/span
    Click Button    xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[4]/label/span

    # Add to Cart
    Wait Until Element Is Visible    xpath://*[@id="store"]/div/div[2]/div[3]/div[2]/div/a/div/button    10s
    Click Button    xpath://*[@id="store"]/div/div[2]/div[3]/div[2]/div/a/div/button
    Wait Until Element Is Visible    xpath://*[@id="store"]/div/div[2]/div[5]/div/div[1]/div[3]/div[2]/button[1]    10s
    Click Button    xpath://*[@id="store"]/div/div[2]/div[5]/div/div[1]/div[3]/div[2]/button[1]

    Sleep    3s

    # Login
    Wait Until Element Is Visible    id:emailid    20s
    Click Button    id:emailid
    Type Text    id:emailid    ${USERNAME}
    Click Button    id:password
    Type Text    id:password    ${PASSWORD}
    Execute Javascript    document.getElementById('password').dispatchEvent(new Event('change'))
    Sleep    3s
    Click Button    Sign In

    # Confirm login
    Wait Until Location Contains    /store    30s
    Wait Until Element Is Visible    xpath://*[@id="navbar-main-collapse"]/ul/li[11]/a/span[2]    30s
    Click Button    xpath://*[@id="navbar-main-collapse"]/ul/li[11]/a/span[2]
    Sleep    2
    Wait Until Element Is Visible    xpath://*[@id="shoppingcart"]/div/div[2]/div/div[5]/button[2]    10s
    Click Button    xpath://*[@id="shoppingcart"]/div/div[2]/div/div[5]/button[2]
    Sleep    2

    # Billing Details
    Wait Until Element Is Visible    name:emailid    10s
    Type Text    name:emailid    ${addmailid}
    Type Text    name:firstname    ${firstname}
    Type Text    name:lastname    ${lastname}
    Type Text    xpath://*[@id="billing_checkout"]/div[2]/form/div[1]/div[5]/input    ${companyname}
    Type Text    name:address    ${address}

    # TODO: Add Country/State selection if needed
    Type Text    name:city    ${city}
    Type Text    name:postal    ${postal}
    Type Text    name:phone1    ${phonenumb}

    Wait Until Element Is Visible    id:checkbox2    10s
    Select Checkbox    id:checkbox2
    Select Checkbox    id:checkbox3
    Log To Console    The test is completed
