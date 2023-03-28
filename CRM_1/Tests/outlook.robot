*** Settings ***
Documentation    some info
Library          SeleniumLibrary

#robot -d results CRM_1script.robot
*** Variables ***


*** Test Cases ***
should be able to add new customer
    [Documentation]     basic info about test
    [Tags]              1006    Smoke   Contacts
    #initialize selenium
    set selenium speed      .2s
    set selenium timeout    5s
    #open browser
    log                     starting the test case
    open browser            https://outlook.live.com/mail/0/    chrome
    #resize browser window for recording
    

    sleep               3s
    close browser


*** Keywords ***
