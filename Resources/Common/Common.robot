*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Beging web test
    open browser  about:blank  ${BROWSER}
    maximize browser window

End web test
    close browser