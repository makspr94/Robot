*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USER_BAR} =    //*[@id="userbar"]
*** Keywords ***
Open main page
    go to    ${URL_MAIN}
    verify page loaded

Verify page loaded
    page should contain image    ${ONLINER_MAIN_LOGO}
    page should contain element    ${USER_BAR}