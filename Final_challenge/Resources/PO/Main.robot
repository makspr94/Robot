*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***
Open Page
    go to    ${URL}
    Verify Page Loaded

Verify Page Loaded
    page should contain    Welcome To Our Studio!
    page should contain    It's Nice To Meet You
    page should contain link    Tell Me More

