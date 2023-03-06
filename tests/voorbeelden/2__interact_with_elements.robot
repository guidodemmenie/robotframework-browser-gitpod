*** Settings ***
Library  Browser        #enable_presenter_mode=${TRUE}
Library  Collections

*** Test Cases ***
My Test
    New Browser    headless=false
    New Page       https://the-internet.herokuapp.com/checkboxes

    Check Checkbox    css=form input:first-child
    Check Checkbox    css=form input:last-child
    Uncheck Checkbox    css=form input:last-child
    Take Screenshot

    ${states}    Get Element States    css=form input:last-child
    List Should Contain Value    ${states}    unchecked