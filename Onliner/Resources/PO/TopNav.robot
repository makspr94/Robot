*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_CATALOGUE} =    xpath=//*[@id="container"]/div/div/header/div[2]/div/nav/ul[1]/li[1]/a[2]


*** Keywords ***

click "Catalogue" button
    click element     ${TOPNAV_CATALOGUE}