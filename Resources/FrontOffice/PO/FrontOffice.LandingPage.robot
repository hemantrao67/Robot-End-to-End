*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDINGPAGE_TEXT}     RobotFrameworkTutorial.com Test Client

*** Keywords ***
Load
    go to  ${FRONT_OFFICE_URL}

Verify Page Loaded
    wait until page contains    ${LANDINGPAGE_TEXT}