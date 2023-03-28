*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***


Begin Web
    set selenium timeout        5s
    #set selenium speed          2s
    open browser                about:blank    ${BROWSER}
    maximize browser window

End Web
    close all browsers
