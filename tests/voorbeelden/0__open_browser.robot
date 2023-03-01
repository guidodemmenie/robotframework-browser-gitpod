*** Settings ***
Library  Browser

*** Test Cases ***
My Test
    New Browser    headless=false   slowMo=1s    #browser=webkit
    New Context    viewport={'width': 800, 'height': 600}

    New Page       https://the-internet.herokuapp.com/checkboxes
    New Page       https://the-internet.herokuapp.com/dynamic_controls
