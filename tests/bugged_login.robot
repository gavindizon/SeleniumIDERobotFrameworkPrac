*** Settings ***
Documentation       A test suite with for the problem user
...
...                 jfhfhfhf
...                 hsdfhdhfh
Library     SeleniumLibrary

*** Test Cases ***

Problem User
    # open browser
    Open Browser    https://www.saucedemo.com/      chrome
    # set window size
    Maximize Browser Window
    Set Selenium Speed      0.2
    #
    Page Should Contain Element     login-button
    #
    Input Text  user-name       problem_user
    #
    Input Password      password     secret_sauce
    #
    Click Button            login-button
    #
    Element Text Should Be     xpath://*[@id="item_3_title_link"]/div      Test.allTheThings() T-Shirt (Red)  
    [Teardown]  Close Browser