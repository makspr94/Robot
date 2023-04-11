*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Smartphone_list_Item2} =          xpath=//*[@id="schema-products"]/div[3]/div/div[3]/div[2]/div[1]/a

*** Keywords ***

Click second product
    click element    ${smartphone_list_item2}



