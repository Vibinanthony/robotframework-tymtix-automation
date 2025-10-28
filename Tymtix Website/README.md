# Tymtix Website Robot Framework Test

This project contains Robot Framework tests for the Tymtix website using SeleniumLibrary with JavaScript-based interactions for robust WebDriver handling.

## Prerequisites

- Python 3.7 or higher
- Robot Framework
- SeleniumLibrary

## Installation

Install the required libraries:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

## Running the Test

Execute the test using Robot Framework:

```bash
robot tymtix.robot
```

Or with verbose output:

```bash
robot -L TRACE tymtix.robot
```

## Test Coverage

The test script `tymtix.robot` performs the following steps:

1. Opens the Tymtix website (https://www.tymtix.com/#/tpms) in Chrome
2. Logs in using JavaScript-based form filling to avoid WebElement errors
3. Selects 3 products on the store page using JavaScript clicks
4. Opens product details and adds them to cart
5. Navigates to shopping cart and clicks checkout
6. Fills billing details including:
   - Email, first name, last name, company, address, city, postal code, phone
   - Country dropdown (INDIA)
   - State dropdown (Tamil Nadu)
   - Checkboxes
7. All interactions use JavaScript to handle dynamic elements

## Configuration

Edit the variables in `tymtix.robot` to modify:
- Username and password
- Billing information
- Wait timeouts
- Page load delays

## Features

- Uses SeleniumLibrary with JavaScript-based interactions for robust element handling
- JavaScript-based interactions for dynamic elements
- Explicit waits for element visibility
- Variables for easy configuration
- Test setup and teardown for browser management
