*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${producer_dropdown} =              xpath=//*[@id="schema-filter"]/div[5]/div[4]/div[2]/div[1]/div
${producer_dropdown_Apple} =        xpath//*[@id="schema-filter"]/div[5]/div[4]/div[2]/div[2]/div/div[1]/div[2]/div//span[text()[contains(.,'Apple')]]
${storage_amount_checkbox_>128} =   xpath=//*[@id="schema-filter"]/div[5]/div[11]/div[3]/ul/li[3]/label/span[2]

${Smartphone_list_Item2} =          xpath=//*[@id="schema-products"]/div[3]/div/div[3]/div[2]/div[1]/a
*** Keywords ***

filter_Apple_128_gb
    click element       ${producer_dropdown}
    click element       ${producer_dropdown_apple}
    click element       ${storage_amount_checkbox_>128}


Click second product
    click element    ${smartphone_list_item2}



