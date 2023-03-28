*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${CAT_NAV_TITLE} =      class:catalog-navigation__title
${CAT_ITEM_1_Electronics} =    Class:catalog-navigation-classifier__item
*** Keywords ***

Verify page loaded
    page should contain element    ${CAT_NAV_TITLE}

open "Smartphone" page
    click element    ${CAT_ITEM_1_Electronics}
    mouse over    
    click element    //*[@id="container"]/div/div/div/div/div[1]/div[4]/div/div[2]/div[1]/div/div[1]/div[2]/div/a[1]/span/span[3]
