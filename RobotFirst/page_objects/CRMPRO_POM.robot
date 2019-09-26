*** Settings ***
Library    SeleniumLibrary
Library    ../External_Keywords/userKeywords.py

*** Variables ***
${URL}    https://www.crmpro.com/
${URL1}    https://robotframework.org/
${BROWSER}    Chrome

*** Keywords***
Open Application
     Open Browser    ${URL}    ${BROWSER}
     Maximize Browser Window
     
Open Application_robot_site
     Open Browser    ${URL1}    ${BROWSER}
     Maximize Browser Window
Login application
    [Arguments]    ${EMAIL}    ${PASSWORD}
    ${title}    Get Title
    [Return]    ${title}
    Input Text    name=username    ${EMAIL}    
    Input Password    name=password    ${PASSWORD} 
    Wait Until Element Is Visible    xpath=//input[@class='btn btn-small']    5       
    Click Button    xpath=//input[@class='btn btn-small'] 
    Set Browser Implicit Wait    5
    Capture Page Screenshot    crmpro_homepage.png
    
Create Folder at runtime
    create_folder
    
contatenation of values
    [Arguments]    ${username}     ${password}
    ${res}      contatenate_values  ${username}  ${password}
    Log    ${res}    
      