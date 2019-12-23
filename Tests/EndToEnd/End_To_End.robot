*** Settings ***
Documentation   Tesing Front - Office
Resource  ../../Resources/Common/Common.robot  # Two levels of folders to reach Resources directory. ../ each for each level, so two times.
Resource  ../../Resources/BackOffice/Back_OfficeApp.robot
Resource  ../../Resources/FrontOffice/Front_OfficeApp.robot
Resource  ../../Data/InputData.robot

Test Setup  common.Beging web test
Test Teardown  common.End web test

*** Variables ***

# robot -d Results Tests\EndToEnd\End_To_End.robot
*** Test Cases ***
Should be able to access both the sites
    [Documentation]  Checking if "Landing" page is accessible [change]
    [Tags]  current

    Front_OfficeAPP.Go to landing page
    sleep  2 s
    Back_OfficeAPP.Go to landing page
    sleep  2 s

*** Keywords ***
