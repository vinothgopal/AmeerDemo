*** Settings ***
Library           SeleniumLibrary
Resource          ../Config.txt
Resource          ../03_PageObject/Generic_Page.robot
Resource          ../03_PageObject/Home_Page.robot
*** Variables ***

*** Keywords ***
Open Application
    open browser    ${url}   ${browser}
    maximize browser window
    delete all cookies
    set selenium implicit wait    5s
    CLICK ELEMENT    ${Login_App_button}
    INPUT TEXT    ${email_login}   ${username}
    INPUT TEXT    ${password_login}    ${password}
    click element    ${login_button}


Logout Application
    capture page screenshot
    CLICK ELEMENT     ${Username_home}
    wait until element is enabled   ${Logout_button}   timeout=10s
    Wait Until Keyword Succeeds    10x    2s    CLICK ELEMENT     ${Logout_button}
    close all browsers


