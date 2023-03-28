*** Settings ***
Library         SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test

    #set selenium speed      .2s
    set selenium timeout    5s


    open browser            about:blank    ${BROWSER}
    #resize browser window for recording

    set window position    x=1921    y=0
    #sleep                       2s
    maximize browser window
    #set window size        width=1935    height=1090



End Web Test
    #sleep                       2s
    close all browsers
