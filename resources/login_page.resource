*** Settings ***
Library  Browser
*** Variables ***
${mail}  draphael59142@gmail.com
*** Keywords ***
I login to the page
    Click  xpath=//div[contains(@class, 'tool--account')]/a
    Click  id=input-email
    Fill Text  xpath=//div[contains(@class, 'tool--account')]/a  ${mail}
