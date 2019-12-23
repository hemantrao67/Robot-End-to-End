*** Settings ***
Library  SeleniumLibrary

Resource  ./PO/BackOffice.LandingPage.robot  #only ./ is used as we are navigating to a file in same directory. If we had to go up a different director, ../ will be used.
Resource  ./PO/BackOffice.TopNavigation.robot

*** Variables ***

*** Keywords ***
Go to landing page
    BackOffice.LandingPage.load
#    LandingPage.Verify Page Loaded

