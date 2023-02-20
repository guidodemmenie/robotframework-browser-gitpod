# robot -d results tests

*** Settings ***
Library  Browser

*** Test Cases ***
My Test
    # New Browser    headless=false
    New Page       https://the-internet.herokuapp.com/dynamic_controls

    Check Checkbox    css=input[type=checkbox]
    Check Checkbox    css=input[type=checkbox]

    Click    button >> text=Remove
    Take Screenshot
    Click    button >> text=Add
    Check Checkbox    css=input[type=checkbox]
    Get Element States    css=input[type=checkbox]    contains    checked
    Take Screenshot
