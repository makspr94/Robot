*** Settings ***
Resource    ../Resources/PO/Main.robot
Resource    ../Resources/PO/Team.robot
Resource    ../Resources/PO/TopNav.robot
*** Variables ***



*** Keywords ***
Open Landing Page
    Main.Open Page

Move to "Team" Page
    TopNav.click "Team" Button
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate page content
