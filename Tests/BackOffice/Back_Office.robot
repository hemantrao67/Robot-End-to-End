*** Settings ***
Documentation   Tesing Front - Office
Resource  ../../Resources/Common/Common.robot  # Two levels of folders to reach Resources directory. ../ each for each level, so two times.
Resource  ../../Resources/BackOffice/Back_OfficeApp.robot
Resource  ../../Data/InputData.robot

Test Setup  common.Beging web test
Test Teardown  common.End web test

*** Variables ***


# robot -d Results Tests\BackOffice\Back_Office.robot

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  Checking if "Landing" page is accessible
    [Tags]  current

    Back_OfficeAPP.Go to landing page

*** Keywords ***
