*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Test Setup   Open application
Test Teardown    close all browsers
Library  highlight.py
*** Variables ***
${url}    https://www.rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Implicitwait
    click element   id=checkBoxOption1
    Run Keyword And Ignore Error  wait until element is visible   id=vinoth  timeout=10s  error=Ignore this error
    ${s}  Run Keyword And Return Status   click element   id=checkBoxOption1
    Run Keyword And Warn On Failure    click element   id=fail
    log to console  ${s}
*** Keywords ***
Open application
    open browser    ${url}   chrome
    maximize browser window
    set selenium implicit wait   5s