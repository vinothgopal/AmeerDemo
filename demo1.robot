*** Settings ***
Documentation    Suite description
Suite Setup   suite
Suite Teardown  teardown
Test Setup   TestSetup
Test Teardown    Tesrtear
*** Test Cases ***
Test title
    [Setup]   setup
    log to console   test
    [Teardown]   down
test1
    log to console   test22
*** Keywords ***
suite
    log to console   suite
teardown
    log to console   teate
TestSetup
    log to console   testsetup
setup
    log to console   local
down
    log to console   localend
Tesrtear
    log to console   testreat