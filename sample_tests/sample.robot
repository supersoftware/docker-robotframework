*** Settings ***
Documentation               This is just a tutorial
...
Metadata                    VERSION     0.1
Library                     Selenium2Library
Suite Setup                 Start Browser
Suite Teardown              Close Browser
 
 
*** Variables ***
${SERVER}                   https://www.google.ch
${BROWSER}                  phantomjs
 
*** Keywords ***
Start Browser
    [Documentation]         Start PhantomJS browser on Selenium Grid
    Open Browser            ${SERVER}   ${BROWSER}   remote_url=${REMOTE_URL}
 
*** Test Cases ***
Check something
    [Documentation]         Check the page title
    Title Should Be         Google
