*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Test Setup   Open application
Test Teardown    close all browsers
Library  highlight.py
Library  Collections
*** Variables ***
${url}    https://www.rahulshettyacademy.com/AutomationPractice/
${sum}   ${0}
*** Test Cases ***
RadioButton_Test_case
    ${namelist}   get webelements   xpath=//*[text()='Web Table Fixed header']/following::div[1]//tr//td[1]
    @{names}=    Create List
    log to console   empty-${names}
    FOR  ${i}  IN  @{namelist}
        ${name}   get text   ${i}
        Append To List    ${names}  ${name}
        log to console   ${names}
        sleep  2s
    END
    log to console   ${names}
    List Should Contain Value    ${names}    Raymond
Print table values
    ${amountlist}   get webelements   xpath=//*[text()='Web Table Example']/following::table[@class='table-display']//tr//td[3]
    @{amt}   Create list
    log to console  empty-${amt}
    FOR  ${amtelm}  IN   @{amountlist}
        ${am}   Get text   ${amtelm}
        append to list   ${amt}   ${am}
        log to console   ${amt}
    END
Amount validation
    ${amtsumlist}   get webelements    xpath=//*[text()='Web Table Fixed header']/following::div[1]//tr//td[4]
    @{callist}   create list
    FOR  ${amtelm}  IN   @{amtsumlist}
        ${am}   Get text   ${amtelm}
        ${v}   Convert To Integer   ${am}
        ${sum}   Convert To Integer   ${sum}
        ${sum}   Evaluate    ${sum}+${v}
        append to list   ${callist}   ${am}
        log to console   ${callist}
        log to console  ${sum}
    END
    ${exp}   get text    xpath=//*[contains(text(),' Total Amount Collected')]
    ${sum}   convert to string   ${sum}
    should contain   ${exp}    ${sum}


*** Keywords ***
Open application
    open browser    ${url}   chrome
    maximize browser window