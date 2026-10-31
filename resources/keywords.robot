*** Settings ***
Documentation    Reusable keywords for the RobotSpareBin login flow.
Library          SeleniumLibrary
Library          BuiltIn

*** Variables ***
${URL}           https://robotsparebinindustries.com
${BROWSER}       chrome
${USERNAME}      maria
${PASSWORD}      thoushallnotpass
${TIMEOUT}       10s

*** Keywords ***
Open Application
    [Documentation]    Opens the browser, maximizes the window, and navigates to the app URL.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}
    # Wait for the JS-rendered login form before interacting
    Wait Until Element Is Visible    id:username

Login With Credentials
    [Documentation]    Types the given username and password, then submits the login form.
    [Arguments]    ${user}    ${pass}
    Input Text        id:username    ${user}
    Input Password    id:password    ${pass}
    Click Button      css:button[type="submit"]

Verify Login
    [Documentation]    Confirms login succeeded by checking that the Log out button is on the landing page.
    Wait Until Element Is Visible    id:logout
    Page Should Contain Element      id:logout
    Log    Login verified: logout button present.

Logout
    [Documentation]    Clicks Log out and confirms we're back on the login form.
    Click Button                     id:logout
    Wait Until Element Is Visible    id:username

Close Application
    [Documentation]    Closes all browser windows opened by the test.
    Close All Browsers
