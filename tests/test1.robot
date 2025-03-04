*** Settings ***
Library  Browser
Resource  ../resources/homepage_page.resource
Resource  ../resources/ballontextbox_page.resource
Resource  ../resources/login_page.resource

*** Variables ***


*** Test Cases ***
Test 1
    #POM pour ouvrir la page d'accueil
    I open the home page    
Test 2
    #POM pour ouvrir la page d'accueil
    I open the home page 
    #POM pour mettre ballon dans la barre de recherche
    I but ball on searchBox 
Test 3 
    #POM pour ouvrir la page d'accueil
    I open the home page 
    #POM pour mettre ballon dans la barre de recherche
    I but ball on searchBox 

    I login to the page



    


    

    
