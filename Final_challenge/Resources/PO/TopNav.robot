*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_BUTTON} =    css=#bs-example-navbar-collapse-1 > ul > li:nth-child(5) > a


*** Keywords ***
click "Team" Button
    click element    ${TOPNAV_TEAM_BUTTON}


