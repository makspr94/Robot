*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =       Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =      Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =      id=EmailAddress
${ADDCUSTOMER_NAME_TEXTBOX} =       //*[@id="FirstName"]
${ADDCUSTOMER_LASTNAME_TEXTBOX} =   //*[@id="LastName"]
${ADDCUSTOMER_CITY_TEXTBOX} =       //*[@id="City"]
${ADDCUSTOMER_STATE_DROPDOWN} =    //*[@id="StateOrRegion"]
${ADDCUSTOMER_GENDER_RADIO} =      gender
${ADDCUSTOMER_CHECKBOX} =          name=promos-name



*** Keywords ***
Verify Page Loaded
    wait until page contains         ${ADDCUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer FIelds
    Click Submit Button

Fill Customer FIelds
    input text                  ${ADDCUSTOMER_EMAIL_TEXTBOX}            Jonedoe@gmail.com
    input text                  ${ADDCUSTOMER_NAME_TEXTBOX}             John
    input text                  ${ADDCUSTOMER_LASTNAME_TEXTBOX}         Dory
    input text                  ${ADDCUSTOMER_CITY_TEXTBOX}             NotYourBusiness
    select from list by value   ${ADDCUSTOMER_STATE_DROPDOWN}           HI
    select radio button         ${ADDCUSTOMER_GENDER_RADIO}             male
    select checkbox             ${ADDCUSTOMER_CHECKBOX}

Click Submit Button
    click button                ${ADDCUSTOMER_SUBMIT_BUTTON}

