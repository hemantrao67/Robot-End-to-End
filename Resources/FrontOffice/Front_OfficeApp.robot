*** Settings ***
Library  SeleniumLibrary

Resource  ./PO/FrontOffice.LandingPage.robot  #only ./ is used as we are navigating to a file in same directory. If we had to go up a different director, ../ will be used.
Resource  ./PO/FrontOffice.TeamPage.robot
Resource  ./PO/FrontOffice.TopNavigation.robot

*** Variables ***

*** Keywords ***
Go to landing page
    FrontOffice.LandingPage.load
    FrontOffice.LandingPage.Verify Page Loaded

Go to "Team" page
    FrontOffice.TopNavigation.Open "Team" page

Validate "Team" page
    FrontOffice.TeamPage.Validate "Team" page