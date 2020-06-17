*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${IMAGE}                    xpath://input[@accept="image/jpeg,image/png,image/webp,image/gif,video/mp4,video/quicktime,video/webm"]
${TWEET}                    xpath://div[@role="button"]//span[text()="Tweet"]
${INPUT_TWEET}              xpath:'//div[@role="textbox"]
${INPUT_TWEET2}             xpath://div[@class='public-DraftStyleDefault-block public-DraftStyleDefault-ltr']
${SIDE_MENU}                xpath://nav[@aria-label="Primary"][@role="navigation"]
${LOADING_ANIMATION}        xpath://div[starts-with(@aria-label, "Loading")]
${IMAGE_UPLOADED}           xpath://div[starts-with(@aria-label, "Image")]
${PROFILE}                  xpath://div[@role="presentation"]
${LOG_OUT}                  xpath://div[contains(text(),"Log out")]
${LOG_OUT_POP_UP}           xpath://div[@class="css-1dbjc4n r-1awozwy r-14lw9ot r-t23y2h r-1jgb5lz r-pm9dpa r-1ye8kvj r-1rnoaur r-d9fdf6 r-1sxzll1 r-13qz1uu"]
${LOG_OUT_BUTTON_POP_UP}    xpath://div[@role="button"]//span[text()="Log out"]
${SETTING_BUTTON}           xpath://a[@aria-label="Settings"][@role="button"]
${EXPLORE_IMAGE}            xpath://div[starts-with(@aria-label, "Timeline: Explore")]

*** Keywords ***
Upload Image and Tweet
    choose file                         ${IMAGE}        D:/ttd.jpg
    input text                          ${input_tweet2}      file codemi
    click element                       ${tweet}
    wait until element is visible       ${IMAGE_UPLOADED}
    click element                       ${PROFILE}
    click element                       ${LOG_OUT}
    wait until element is visible       ${LOG_OUT_POP_UP}
    click element                       ${LOG_OUT_BUTTON_POP_UP}