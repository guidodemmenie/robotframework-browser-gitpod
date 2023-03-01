*** Settings ***
Library  Browser
Library    ../../.venv/lib/python3.11/site-packages/robot/libraries/Collections.py

*** Test Cases ***
My Test
    # New Browser    headless=false
    New Page       https://the-internet.herokuapp.com/checkboxes

    Check Checkbox    css=form input:last-child
    Uncheck Checkbox    css=form input:last-child

    ${states}    Get Element States    css=form input:last-child
    List Should Contain Value    ${states}    unchecked