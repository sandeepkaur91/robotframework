***Settings***
Library    SeleniumLibrary
Resource    ../page_objects/CRMPRO_POM.robot
Test Setup    Open Application_robot_site
Test Teardown    Close Browser

*** Test Cases ***
Crmpro fetch data 
    contatenation of values    sandeep    chhina    
    
    ${actual_url}    Get Location
    Log    ${actual_url}    
    ${page_html}    Get Source
    Log    ${page_html}    
    
window_handling
    Click Element    xpath=//a[contains(text(),'Robot Framework Foundation')]    
    Select Window    Robot Framework
    ${url1}    Get Location
    Log    ${url1}    
    Select Window    Robot Framework Foundation
    ${url2}    Get Location
    Log    ${url2}    
    
window_handling_for_dynamic_windows_better
    Click Element    xpath=//a[contains(text(),'Robot Framework Foundation')]
    @{list1}    Get Window Handles    
    :FOR    ${win}    IN    @{list1}
    \    Select Window    ${win}
    \    ${url}    Get Location
    \    Log To Console    ${url}    
    
    