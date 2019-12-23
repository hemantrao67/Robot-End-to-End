*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOPNAVIGATION_LINK_TEAM}  css=nav[id='mainNav'] ul li a[href='#team']

*** Keywords ***
Open "Team" page
    click link  ${TOPNAVIGATION_LINK_TEAM}