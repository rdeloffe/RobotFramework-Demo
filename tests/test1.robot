*** Settings ***
Library  Browser
Resource  ../resources/homepage_page.resource
Resource  ../resources/search_page.resource
Resource  ../resources/login_page.resource
Resource  ../resources/searchbar_element.resource
Resource  ../resources/product_page.resource
Resource  ../resources/cart_page.resource

Test Setup  Given I am on the homepage

*** Test Cases ***
Test 1
    No Operation

Test 2
    When I search for "ballon"
    Then I am on the search page for "ballon"

Test 3
    When I go to the login form
    Then I am on the login form
    When I try to connect with the email address "toto@yopmail;com"
    Then I have an error for a wrong email address

Test 4
    When I search for "ballon"
    Then I am on the search page for "ballon"
    And the selected sorting method is "Meilleures ventes"
    When I sort the list by "Note des clients"
    Then the selected sorting method is "Note des clients"

Test 5
    When I search for "ballon"
    Then I am on the search page for "ballon"
    When I open the first product page
    Then I am on the product page for "Ballon de Gymnastique Rythmique de 165 mm, rose ultra fluo"
    When I add the product to the cart
    Then the product is added to the cart successfully
    When I go to the cart
    Then the cart is displayed
    And there are "1" product(s) in the cart
    And the product "Ballon de Gymnastique Rythmique de 165 mm, rose ultra fluo" is in the cart

Test 6 
    When I search for "ballon"
    Then I am on the search page for "ballon"
    When I open the first product page
    Then I am on the product page for "Ballon de Gymnastique Rythmique de 165 mm, rose ultra fluo"
    When I add the product to the cart
    Then the product is added to the cart successfully
    And I close the popin
    When I search for "8131781"
    Then I am on the product page for "Tapis de sol fitness 6,5 mm - noir"
    When I add the product to the cart
    Then the product is added to the cart successfully
    When I go to the cart
    Then the cart is displayed
    And there are "2" product(s) in the cart
    # And the product "Ballon de Gymnastique Rythmique de 165 mm, rose ultra fluo" is in the cart
    # And the product "Tapis de sol fitness 6,5 mm - noir" is in the cart



    








