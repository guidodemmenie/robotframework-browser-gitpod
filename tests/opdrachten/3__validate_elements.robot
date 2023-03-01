# robot -d results tests/opdrachten/3__validate_elements.robot

*** Settings ***
Library  Browser
Library  Collections

*** Test Cases ***
My Test
    # New Browser    headless=false
    New Page       https://the-internet.herokuapp.com/dynamic_controls


