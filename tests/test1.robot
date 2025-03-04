*** Settings ***
Library  Browser
Resource  ../resources/homepage_page.resource
Resource  ../resources/ballontextbox_page.resource

*** Variables ***


*** Test Cases ***
Test
    #POM pour ouvrir la page d'accueil
    I open the home page    
    
    #POM pour mettre ballon dans la barre de recherche
    I but ball on searchBox 

    


    

    
