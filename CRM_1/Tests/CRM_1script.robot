*** Settings ***
Documentation   some info
Library         SeleniumLibrary
Resource        ../Resources/Common.robot
Resource        ../Resources/CrmApp.robot
Test Setup      Begin Web Test
Test Teardown    End Web Test

#robot -d results CRM_1script.robot
*** Variables ***
${BROWSER} =            chrome
${URL} =                https://automationplayground.com/crm
${VALID_LOGIN_EMAIL} =  admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =    qwerty


*** Test Cases ***
Home page should load
    [Documentation]     Test the login
    [Tags]              1002    Smoke   Login
    CrmApp.Go to "Home" Page

should be able to Login With Valid Credentials
    [Documentation]     Test the login
    [Tags]              1002    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

should be able to Log Out
    [Documentation]     Test the log out
    [Tags]              1004    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

should be able to add new customer
    [Documentation]     Test Adding a new customer
    [Tags]              1006    Smoke   Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out





