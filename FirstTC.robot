*** Setting ***
Library    SeleniumLibrary
Test Setup    Open application
#Test Teardown    close all browsers
Resource   Config.txt
*** Variables ***
${exTitle}     Stock Screener and fundamental analysis tool for Indian stocks

*** Test Cases ***
Sample Test Case
    ${actitle}=    get title
    capture page screenshot
    ${newUrl}    Get location
    input text    xpath=//input[@name="userName"]    vinoth
    ${ac}  get element attribute   xpath=//input[@name="userName"]   value
    log to console   actual value ${ac}
    log to console    newurl --> ${newUrl}
    ${us}   Get Text     xpath=//input[@name='userName']/../preceding::td[1]/font
    log to console    first->${us}
    ${fc}   get element attribute   xpath=//input[@name='userName']/../preceding::td[1]/font   face
    log to console    ${fc}
    ${us1}  get element attribute   xpath=//input[@name='userName']/../preceding::td[1]/font    innerText
    log to console    last->${us1}
    #${v}     get element attribute    //a[@class='button account']    href
    #log to console     ${v}
    #log to console     ${v}
    #Should Contain       ${actitle}    ${exTitle}
*** Keywords ***
Open application
    OPEN BROWSER      ${url}    ${browser}
    maximize browser window