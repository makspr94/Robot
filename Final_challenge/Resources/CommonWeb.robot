*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***

Begin Web Test
    set selenium timeout    5s
    open browser    about:blank    ${BROWSER}
    set window position    x=1921    y=0
    maximize browser window

End Web Test
    close all browsers