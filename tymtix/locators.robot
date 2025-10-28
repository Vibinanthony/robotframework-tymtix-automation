*** Variables ***

# ===== Navbar Locators =====
${NAVBAR_LINK_2}       xpath://*[@id="navbar-main-collapse"]/ul/li[2]/a
${NAVBAR_LINK_3}       xpath://*[@id="navbar-main-collapse"]/ul/li[3]/a
${CART_ICON}           xpath://*[@id="navbar-main-collapse"]/ul/li[11]/a/span[2]

# ===== Store Page Locators =====
${LOADER_OVERLAY}      css:div.loading.ng-scope
${PRODUCT_CHECKBOX_1}  xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[2]/label/span
${PRODUCT_CHECKBOX_2}  xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[3]/label/span
${PRODUCT_CHECKBOX_3}  xpath://*[@id="store"]/div/div[2]/div[2]/div[2]/div[4]/label/span
${BUY_NOW_BUTTON}      xpath://*[@id="store"]/div/div[2]/div[3]/div[2]/div/a/div/button
${ADD_TO_CART_BUTTON}  xpath://*[@id="store"]/div/div[2]/div[5]/div/div[1]/div[3]/div[2]/button[1]

# ===== Login Page Locators =====
${EMAIL_FIELD}         id:emailid
${PASSWORD_FIELD}      id:password
${SIGN_IN_BUTTON}      xpath://button[text()="Sign In"]

# ===== Checkout Locators =====
${CHECKOUT_BUTTON}     xpath://*[@id="shoppingcart"]/div/div[2]/div/div[5]/button[2]
${EMAIL_BILLING}       name:emailid
${FIRSTNAME_BILLING}   name:firstname
${LASTNAME_BILLING}    name:lastname
${COMPANY_BILLING}     xpath://*[@id="billing_checkout"]/div[2]/form/div[1]/div[5]/input
${ADDRESS_BILLING}     name:address
${CITY_BILLING}        name:city
${POSTAL_CODE}         xpath://*[@id="billing_checkout"]/div[2]/form/div[1]/div[11]/input
${PHONE_NUMBER_PATH}    name:phone1
${CHECKBOX2}           id:checkbox2
${CHECKBOX3}           id:checkbox3
