*** Settings ***
Library    SeleniumLibrary    
Resource    ../page_objects/CRMPRO_POM.robot
Documentation    test to verfiy the login functionality of crmpro site 
Test Setup    Open Application
Test Teardown     Close Browser   



*** Test Cases ***
test case to open application
   ${res}     Login application    sandeepchhina934    Sunshine@91
   log    ${res}
