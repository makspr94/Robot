*** Settings ***
Resource    ../Resources/PO/MainPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/Catalogue.robot

*** Variables ***
${ONLINER_MAIN_LOGO} =    https://gc.onliner.by/images/logo/onliner_logo.v3.png?1677766000     #don't works


*** Keywords ***





Open main page
    MainPage.Open main page

Open Catalogue page
    TopNav. click "Catalogue" button


open "Smartphone" page
    Catalogue.open "Smartphone" page

Filter Apple 128 GB
    smartphone_cat.filter_Apple_128_gb

Click second product
    smartphone_cat.Click second product