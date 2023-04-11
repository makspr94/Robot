*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USER_BAR} =    //*[@id="container"]/div/div/header/div[3]
*** Keywords ***
Open main page
    go to    ${URL_MAIN}


