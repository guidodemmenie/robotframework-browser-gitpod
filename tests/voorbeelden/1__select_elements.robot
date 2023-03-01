# robot -d results tests

*** Settings ***
Library  Browser

*** Test Cases ***
My Test
    New Browser    #headless=false
    New Page       https://the-internet.herokuapp.com/notification_message

    # text | but watch out, strict mode means Playwright expects there only to be 1 element match!
    Get Element    text=Action

    # css
    Get Element    css=div.flash

    # combining selector strategies
    Get Element    css=\#flash-messages >> text=succes

    ${element id}    Get Element    css=div.flash
