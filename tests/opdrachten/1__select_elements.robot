# robot -d results tests/opdrachten/1__select_elements.robot

*** Settings ***
Library  Browser

*** Test Cases ***
My Test
    New Browser    #headless=false
    New Page       https://the-internet.herokuapp.com/dynamic_controls

