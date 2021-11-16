*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Test Setup   Open application
#Test Teardown    close all browsers
Library  highlight.py
*** Variables ***
${url}    https://www.rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
RadioButton_Test_case
    click element    id=html
    reload page
    sleep  2s
    radio button should be set to   radio   HTML
    radio button should not be selected   radio   HTML
    #select radio button     radioButton    radio1
    # param   Groupname(id,name,class)   value
    sleep  5s
Navigate Function
    ${web}   get webelement    //h1[text()='Practice Page']
    highlightele  ${web}
    sleep  3s
    reload page
    sleep  3s
    Go to   file:///C:/Users/k64085043/OneDrive%20-%20KONE%20Corporation/Desktop/drop.html
    sleep  2s
    GO BACK
    sleep   4s
    navigateForward
    sleep  4s
Checkbox_Testcases
    click element    id=ameer
    select checkbox   id=vehicle2
    sleep  2s
    checkbox should be selected   id=ameer
    checkbox should not be selected   id=vehicle3
    click element   id=ameer
    unselect checkbox   id=vehicle2
    sleep  3s
    ${listcheck}    get webelements    xpath=//input[@type='checkbox']
    FOR   ${el}  IN  @{listcheck}
        select checkbox   ${el}
    END
    sleep  3s
SlectDrop_Testcase
    sleep  2s
    select from list by index    id=cars   2
    sleep  3s
    select from list by value    id=cars    audi
    sleep  3s
    select from list by label    id=cars    Saab
    sleep  3s
    list selection should be     id=cars    saab
    capture page screenshot
Alert_TestCases
    set selenium implicit wait    30s
    ${t}  get selenium implicit wait
    #set selenium implicit wait    10s
    log to console   ${t}
    wait until element is enabled   id=alertbtn1   timeout=20s
    click element   id=alertbtn1
    alert should be present
    sleep  2s
    HANDLE ALERT
    sleep  2s
    alert should not be present
    input text   id=name   demotesting
    click element  id=confirmbtn
    ${value}  HANDLE ALERT
    log to console   ${value}
    sleep  3s
    alert should not be present
    #HANDLE ALERT   action=DISMISS
    sleep  3s
    log to console   ${title1}

*** Keywords ***
Open application
    open browser    ${url}   chrome
    maximize browser window
