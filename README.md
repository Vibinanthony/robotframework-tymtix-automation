#  Tymtix Web Automation (Robot Framework)

This repository contains a **Robot Framework automation test suite** that validates the Tymtix e-commerce web flow — including navigation, product selection, adding products to the cart, logging in, and filling in billing details.

---

##  Features

- Built using **Robot Framework** with the **SeleniumLibrary**
- Automates:
  - Navigating to the product page
  - Selecting and adding products to the cart
  - Performing login
  - Filling billing details (with dynamic dropdown handling for country)
- Uses a modular structure with **locators** and **resource files**

---

##  Project Structure
Robotframework/
│
├── tymtix/
│   ├── login.robot          # Main test case file
│   ├── locators.robot       # Element locators
│   ├── resource.robot       # Shared keywords (Open URL, Close Browser, etc.)
│
├── README.md                # Project documentation
└── requirements.txt         # Python dependencies

