*** Settings ***
Documentation    Suite description
*** Variables ***
@{a}   1  2  3  4  5
*** Test Cases ***
Test title
    FOR  ${i}   IN  @{a}
        Log to console  ${i}
    END
    log to console  *****************
    FOR  ${j}  IN RANGE  1  10  5
        log to console   ${j}
    END
*** Keywords ***
Provided precondition
    Setup system under test