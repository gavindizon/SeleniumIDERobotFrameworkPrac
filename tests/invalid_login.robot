*** Settings ***
Documentation       A test suite with for invalid logins
...
...                 jfhfhfhf
...                 hsdfhdhfh
Library     SeleniumLibrary

*** Test Cases ***

Invalid Login on Locked Out User
    # open browser
    Open Browser    https://www.saucedemo.com/      chrome
    # set window size
    Maximize Browser Window
    Set Selenium Speed      0.2
    #
    Page Should Contain Element     login-button
    #
    Input Text  user-name       locked_out_user
    #
    Input Password      password     secret_sauce
    #
    Click Button            login-button
    #
    Element Text Should Be     xpath://*[@id="login_button_container"]/div/form/div[3]/h3      Epic sadface: Sorry, this user has been locked out.    

    [Teardown]  Close Browser

Invalid Login on Wrong Password
    # open browser
    Open Browser    https://www.saucedemo.com/      chrome
    # set window size
    Maximize Browser Window
    Set Selenium Speed      0.2
    #
    Page Should Contain Element     login-button
    #
    Input Text  user-name       locked_out_user
    #
    Input Password      password     asdfgghk
    #
    Click Button            login-button
    #
    Element Text Should Be     xpath://*[@id="login_button_container"]/div/form/div[3]/h3      Epic sadface: Username and password do not match any user in this service  

    [Teardown]  Close Browser