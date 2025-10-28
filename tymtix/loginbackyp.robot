

*** Settings ***
Library    SeleniumLibrary
Resource   resource.robot

Test Setup     Open the url
Test Teardown  Close Browser

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


*** Test Cases ***

Navigate to Homepage after login
    # ===== Navigate homepage =====
   # Wait Until Element Is Visible    xpath://*[@id="navbar-main-collapse"]/ul/li[2]/a    ${WAIT}
    Click Element    xpath://*[@id="navbar-main-collapse"]/ul/li[2]/a
    Click Element    xpath://*[@id="navbar-main-collapse"]/ul/li[3]/a

    # Wait for loader overlay to disappear
    Wait Until Element Is Not Visible    css:div.loading.ng-scope    ${WAIT}

    # ===== Select products =====
    Click Element    xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[2]/label/span
    Click Element    xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[3]/label/span
    Click Element    xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[4]/label/span

    # ===== Open product details =====
    Click Element    xpath://*[@id="store"]/div/div[2]/div[3]/div[2]/div/a/div/button
   # Capture Page Screenshot    product_details.png

    Sleep    10
    Click Element    xpath://*[@id="store"]/div/div[2]/div[5]/div/div[1]/div[3]/div[2]/button[1]
    Sleep    5

        # ===== Enter login credentials =====
    Wait Until Element Is Visible    id:emailid    20s
    Sleep    1s
    Execute JavaScript    document.getElementById('emailid').value='${USERNAME}'
    Execute JavaScript    document.getElementById('password').value='${PASSWORD}'
    Sleep    1s

    # ===== Click Login button =====
    Execute JavaScript    document.getElementsByName('LoginForm')[0].querySelector('button').click();
    #Sleep    3s    # allow time for login to process

    #Capture Page Screenshot    login_done.png

    Sleep     10
    Click Element    xpath://*[@id="navbar-main-collapse"]/ul/li[11]/a/span[2]     # Click on the cart screen
    Sleep    2
    Click Element    xpath://*[@id="shoppingcart"]/div/div[2]/div/div[5]/button[2]     # Click on the checkout button
    Sleep    2
    Input Text    name:emailid    ${addmailid}
    Input Text    name:firstname    ${firstname}
    Input Text    name:lastname    ${lastname}
    Input Text    xapth://*[@id="billing_checkout"]/div[2]/form/div[1]/div[5]/input    ${companyname}
    Input Text    name:address    ${address}
    Select From List By Label    Select Country    INDIA
    Sleep    10
    Select From List By Label    Select State    Tamil Nadu
    Sleep    10
    Input Text    name:city    ${city}
    Input Text    name:postal    ${postal}
    Input Text    name:phone1    ${phonenumb}
    Select Checkbox    id:checkbox2
    Select Checkbox    id:checkbox3
    Log To Console    The test is compeleted











