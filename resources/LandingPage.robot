*** Settings ***
Library     Seleniumlibrary

*** Variables ***
${ID}               name:session[username_or_email]
${PASSWORD}         name:session[password]
${LOGIN_BUTTON}     xpath://div[@role="button"]//span[text()="Log in"]

*** Keywords ***
Login Twitter
    input text  ${ID}           ziardiA
    input text  ${PASSWORD}     ziardi12345
    click element  ${login_button}