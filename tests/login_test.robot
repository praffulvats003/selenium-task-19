*** Settings ***
Documentation    Verifies login and logout on RobotSpareBin Industries.
Resource         ../resources/keywords.robot
Test Teardown    Close Application

*** Test Cases ***
Valid User Can Login And Logout
    [Documentation]    Open app, log in with valid credentials, verify landing page, log out.
    [Tags]             login    smoke
    Open Application
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    Verify Login
    Logout
