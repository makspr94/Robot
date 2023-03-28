*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_CATALOGUE} =    css=#container > div > div > header > div.b-top-menu > div > nav > ul.b-main-navigation > li:nth-child(1) > a.b-main-navigation__link > span


*** Keywords ***

click "Catalogue" button
    click element       ${TOPNAV_CATALOGUE}