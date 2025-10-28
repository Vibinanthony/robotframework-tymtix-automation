*** Settings ***
Documentation    DropDownAlert
Library          SeleniumLibrary

*** Variables ***
${url}           https://training.qaonlinetraining.com/testPage.php
${browser}       Chrome

*** Test Cases ***
RadioButton and CheckBox
    Perform Click on Button

Dropdown elements
    Select Value

Alert Test
    Alert click

*** Keywords ***
Perform click on button
    Open browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    xpath:/html/body/form/input[5]
    Sleep    10
    Click Element    xpath:/html/body/form/input[9]

Select Value
    Select From List By Label    country    Ethiopia
    Sleep    10
    Click Element    name:submit

Alert click
    
    Click Element    id:alert             #This action usually triggers the first pop-up dialog
    Handle Alert    accept                # Clicks the "OK" or "Yes" button on the pop-up that just appeared, making it disappear.
    Click Element    id:confirm            # This action usually triggers a second, different pop-up dialog (often a "confirmation" dialog).
    Handle Alert    dismiss                # Clicks the "Cancel" or "No" button on the second pop-up, making it disappear.