*** Settings ***
Documentation    Suite description
Library           SeleniumLibrary
Resource          ../03_PageObject/Home_Page.robot
*** Keywords ***
Verify User name in Home page
    [Arguments]   ${exname}
    wait until element is visible   ${Username_home}    timeout=30s
    ${acname}=   get text   ${Username_home}
    Should be equal    ${exname}   ${acname}

Verify Home page Contaact email
    [Arguments]   ${exmail}
    wait until element is visible   ${email_contact_home}    timeout=30s
    ${acmail}=   get text   ${email_contact_home}
    Should be equal    ${exmail}   ${acmail}