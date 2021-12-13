*** Settings ***
Documentation       A test suite with a single test for valid login
...
...                 jfhfhfhf
...                 hsdfhdhfh
Library     SeleniumLibrary

*** Test Cases ***

Valid Login
    # open browser
    Open Browser    https://www.saucedemo.com/      chrome
    # set window sizr
    Maximize Browser Window
    Set Selenium Speed      2
    #
    Page Should Contain Element     login-button
    #
    Input Text  user-name       standard_user
    #
    Input Password      password     secret_sauce
    #
    Click Button            login-button
    #
    Element Text Should be      class:title     PRODUCTS

    [Teardown]  Close Browser