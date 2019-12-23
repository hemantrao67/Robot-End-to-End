*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TEAMPAGE_TEXT_HEADING}    css=#team h2


*** Keywords ***
Validate "Team" page
    element text should be  ${TEAMPAGE_TEXT_HEADING}  OUR AMAZING TEAM