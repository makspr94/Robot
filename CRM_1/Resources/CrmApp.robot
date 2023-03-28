*** Settings ***
Resource    ../resources/PO/AddCustomer.robot
Resource    ../resources/PO/Customers.robot
Resource    ../resources/PO/Home.robot
Resource    ../resources/PO/LoggedOut.robot
Resource    ../resources/PO/SignIn.robot
Resource    ../resources/PO/TopNav.robot
*** Variables ***

*** Keywords ***
Go to "Home" Page
    Home.Navigate to

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${Email}    ${Password}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click "Add Customer" Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" Button
    LoggedOut.Verify Page Loaded