*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Test Setup   Open application
Test Teardown    close browser
Library  highlight.py
Library  Collections
*** Variables ***
${url}    https://www.rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Multiple_Windows_TC
    CLICK ELEMENT   id=openwindow
    ${handles}=   get window handles
    log to console  ${handles}
    #switch window   ${handles}[0]
    ${title1}   get title
    log to console   ${title1}
    switch window   ${handles}[1]
    ${title2}   get title
    log to console   ${title2}
    sleep  3s
    click element  xpath=//a[text()='Contact']
    ${title3}   get title
    log to console   ${title3}
    close window
    sleep  3s
    switch window   ${handles}[0]
    click element  id=checkBoxOption1
    sleep  5s

Multiple Tabs
    click element   id=opentab
    sleep  3s
    ${tabs}   get window handles
    log to console   ${tabs}
    ${t1}  GET TITLE
    log to console   ${t1}
    switch window   ${tabs}[1]
    ${t2}  GET TITLE
    log to console  ${t2}
    close window
    sleep  5s
    switch window   ${tabs}[0]
    sleep  3s
    ${t3}  GET TITLE
    log to console   ${t3}
*** Keywords ***
Open application
    open browser    ${url}   chrome
    maximize browser window
