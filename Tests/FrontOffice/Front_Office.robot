*** Settings ***
Documentation   Tesing Front - Office
Resource  ../../Resources/Common/Common.robot  # Two levels of folders to reach Resources directory. ../ each for each level, so two times.
Resource  ../../Resources/FrontOffice/Front_OfficeApp.robot
Resource  ../../Data/InputData.robot

Test Setup  common.Beging web test
Test Teardown  common.End web test

*** Variables ***


# robot -d Results Tests\FrontOffice\Front_Office.robot
*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  Checking if "Team" page is accessible
    [Tags]  current

    Front_OfficeAPP.Go to landing page
    Front_OfficeAPP.Go to "Team" page

"Team" page should match requirements
    [Documentation]  Team page has a correct header [change]
    [Tags]  current

    Front_OfficeAPP.Go to landing page
    Front_OfficeAPP.Go to "Team" page
    Front_OfficeAPP.Validate "Team" page


*** Keywords ***
