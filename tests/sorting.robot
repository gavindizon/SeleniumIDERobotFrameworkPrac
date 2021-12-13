*** Settings ***
Documentation       A test suite with for the sorting
...
...                 jfhfhfhf
...                 hsdfhdhfh
Library     SeleniumLibrary

*** Test Cases ***

Sort A-Z
    # open browser
    Open Browser    https://www.saucedemo.com/      chrome
    # set window size
    Maximize Browser Window
    Set Selenium Speed      0.2
    #
    Page Should Contain Element     login-button
    #
    Input Text  user-name       standard_user
    #
    Input Password      password     secret_sauce
    #
    Click Button            login-button
    #
    Select From List By Value   xpath://*[@id="header_container"]/div[2]/div[2]/span/select      az
    #
    Element Text Should Be     xpath://html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div      Sauce Labs Backpack
    
    [Teardown]  Close Browser

Sort Z-A
    # open browser
    Open Browser    https://www.saucedemo.com/      chrome
    # set window size
    Maximize Browser Window
    Set Selenium Speed      0.2
    #
    Page Should Contain Element     login-button
    #
    Input Text  user-name       standard_user
    #
    Input Password      password     secret_sauce
    #
    Click Button            login-button
    #
    Select From List By Value   xpath://*[@id="header_container"]/div[2]/div[2]/span/select      za
    #
    Element Text Should Be     xpath://html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div      Test.allTheThings() T-Shirt (Red)
    
    [Teardown]  Close Browser

Sort low to high
    # open browser
    Open Browser    https://www.saucedemo.com/      chrome
    # set window size
    Maximize Browser Window
    Set Selenium Speed      0.2
    #
    Page Should Contain Element     login-button
    #
    Input Text  user-name       standard_user
    #
    Input Password      password     secret_sauce
    #
    Click Button            login-button
    #
    Select From List By Value   xpath://*[@id="header_container"]/div[2]/div[2]/span/select      lohi
    #
    Element Text Should Be     xpath://html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div      Sauce Labs Onesie
    
    [Teardown]  Close Browser

Sort high to low
    # open browser
    Open Browser    https://www.saucedemo.com/      chrome
    # set window size
    Maximize Browser Window
    Set Selenium Speed      0.2
    #
    Page Should Contain Element     login-button
    #
    Input Text  user-name       standard_user
    #
    Input Password      password     secret_sauce
    #
    Click Button            login-button
    #
    Select From List By Value   xpath://*[@id="header_container"]/div[2]/div[2]/span/select      hilo
    #
    Element Text Should Be     xpath://html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div      Sauce Labs Fleece Jacket
    
    [Teardown]  Close Browser