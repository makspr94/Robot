*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${CAT_ITEM_1_Electronics} =                         Xpath=//li[@data-id="1"]
${CAT_item1_subitem1_phonesAndAccessories} =        Xpath=//div[contains(text(),'Мобильные телефоны')]
${CAT_item1_subitem1.1_phones} =                    Xpath=//*[@id="container"]/div/div/div/div/div[1]/div[4]/div/div[2]/div[1]/div/div[1]/div[2]/div/a[1]

*** Keywords ***



open "Smartphone" page
    click element     ${CAT_ITEM_1_Electronics}
    mouse over        ${CAT_item1_subitem1_phonesAndAccessories}
    click element     ${CAT_item1_subitem1.1_phones}
