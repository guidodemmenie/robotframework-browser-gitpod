# robot -d results tests/opdrachten/3__validate_elements.robot

*** Settings ***
Library  Browser
Library  Collections

*** Test Cases ***
My Test
    # New Browser    headless=false
    New Page       https://the-internet.herokuapp.com/dynamic_controls

    Check Checkbox        css=input[type=checkbox]
    Check Checkbox        css=input[type=checkbox]

    Click                 button >> text=Remove
    Take Screenshot
    Click                 button >> text=Add
    Check Checkbox        css=input[type=checkbox]

    # Optie 1
    ${states}             Get Element States    css=input[type=checkbox]
    List Should Contain Value    ${states}    checked

    # Optie 2
    Get Element States    css=input[type=checkbox]    contains    checked
