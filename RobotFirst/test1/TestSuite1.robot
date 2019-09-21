*** Settings ***
Library    SeleniumLibrary  
Suite Setup    Log    inside test suite setup
Suite Teardown    Log    inside test suite Teardown    
Test Setup    log    inside test case setup
Test Teardown    Log    inside test case teardown          



*** Test Cases ***
MyFirstTest
    Log    hello world    
    
FirstSeleniumTest
    Open Browser    https:google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    automation step by step  
    Sleep    2 
    Press Keys    name=q    ENTER  
    #Click Button    name=btnK       
    Close Browser   
    Log    Test completed    
    
Login Test
    Open Browser    https://www.crmpro.com/    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    name=username    sandeepchhina934
    Input Password    name=password    Sunshine@91
    Set Browser Implicit Wait    5
    Click Button    xpath=//input[@class='btn btn-small']
    Set Browser Implicit Wait    3
    Select Frame    name=mainpanel   
    Click Element    xpath=//ul[@class='mlddm']//a[contains(text(),'Companies')]
    Unselect Frame
    Close All Browsers
        
       
                    