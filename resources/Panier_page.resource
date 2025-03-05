*** Settings ***
Library  Browser
Library    XML
*** Variables ***

*** Keywords ***
Mettre ballon panier
    Click  xpath=//*[contains(concat(' ', normalize-space(@class), ' '), ' product-list ')]/*[1]

    Get Text  xpath=//h1  text  BALLON DE GYM RÉSISTANT - Swissball - 65 CM - Argent
    Click   css= .conversion-zone__purchase-cta


