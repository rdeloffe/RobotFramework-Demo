*** Settings ***
Library  Browser


*** Variables ***


*** Keywords ***
I open the home page 
    Open Browser  https://www.decathlon.fr/
    Get Element States  id=didomi-notice-agree-button  contains  visible
    # Cliquer sur accepter les cookies
    Click  xpath=//span[normalize-space()='Tout accepter']
    Wait For Elements State  id=didomi-popup  detached


