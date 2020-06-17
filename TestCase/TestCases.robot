*** Settings ***
Library     Seleniumlibrary
Resource    ../resources/HomePage.robot
Resource    ../resources/LandingPage.robot
Suite Setup         open twitter
Suite Teardown      close twitter
Test Setup          sleep test case

*** Variables ***
${BROWSER}      chrome
${TWITTER}      https://twitter.com/

*** Keywords ***
open twitter
    open browser    ${TWITTER}  ${BROWSER}
    maximize browser window

close twitter
    close browser

sleep test case
    set selenium speed  1s


*** Test Cases ***
TestCase01
    Login Twitter

TestCase02
    Upload Image and Tweet