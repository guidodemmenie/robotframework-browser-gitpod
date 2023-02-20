# robot -d results tests

*** Settings ***
Library  Browser

*** Test Cases ***
My Test
    New Browser    headless=false
    New Page       https://www.robotframework.org
    Sleep          15s