*** Settings ***
Documentation     Suite description
Test Setup        Open Application
Test Teardown     Logout Application
Resource          ../02_Resources/Generic_Functions.robot
Resource          ../02_Resources/Home_Functions.robot
Variables         ../04_Libraries/returnData.py    ${TestData}

*** Test Cases ***
HomePage_Tc1
    [Tags]   Smoke
    Verify User name in Home page     ${${TEST_NAME}.UserName}
    Verify Home page Contaact email    ${${TEST_NAME}.Contact_Mail}
HomePage_Tc2
    [Tags]   Smoke  Regression
    Verify User name in Home page     ${${TEST_NAME}.UserName}
    Verify Home page Contaact email    ${${TEST_NAME}.Contact_Mail}