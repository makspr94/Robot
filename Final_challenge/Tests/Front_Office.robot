*** Settings ***
Resource    ../Resources/AppClient.robot
Resource    ../Resources/CommonWeb.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =    chrome
${URL} =    https://automationplayground.com/front-office/

*** Test Cases ***
Home page should load
    [Documentation]     Test the open Main Landing
    [Tags]              1001    Smoke   MainLanding
    AppClient.Open Landing Page
    #sleep    2s

Should Be abble to Access Team Page
    [Documentation]     Open Access Team Page
    [Tags]              1002    Smoke   Team_Page
    AppClient.Open Landing Page
    AppClient.Move to "Team" Page
   # sleep    2s

"Team" page should match requirements
    AppClient.Open Landing Page
    AppClient.Move to "Team" Page
    AppClient.Validate "Team" Page
