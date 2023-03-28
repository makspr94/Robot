*** Settings ***
Resource    ../Resources/OnlinerAPP.robot
Resource    ../Resources/WebCommon.robot

Test Setup          Begin Web
Test Teardown       End Web


*** Variables ***

${BROWSER} =    chrome
${URL_MAIN} =    https://www.onliner.by/




*** Test Cases ***
Open Catalogue page
    OnlinerApp.Open main page
    OnlinerApp.Open Catalogue page

Open Catalogue/Smartphone page
      OnlinerApp.Open main page
      OnlinerApp.Open Catalogue page
      OnlinerAPP.Open "Smartphone" page
