*** Settings ***

Library    SeleniumLibrary

Test Setup         Log    I am inside my Test Setup
Test Teardown      Log    I am outside my Test Setup 
Suite Setup        Log    I am inside my Test Suite Setup
Suite Teardown     Log    I am outside my Test Suite Teardown

*** Test Cases ***

MYFirstTest
    Log     Hello World...
     

FirstSeleniumTest

    Open Browser    https:google.com    chrome
    Set Browser Implicit Wait    5
    Input Text      name=q              Automation Testing
    Sleep           2    
    Click Button    name=btnK  
    Sleep           2 
    Close Browser
    


LoginTest
    
    Open Browser    http:automationpractice.com    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Click Link      xpath=//a[@class='login']
    Input Text      id=email        mytest101@yopmail.com
    Input Text      id=passwd       Test@12345      
    Press Keys      id=passwd       ENTER
    Sleep           5
    Close Browser
    Log             Test Completed Successfully
    
LoginTest1-ScalarVariable
    
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Click Link      xpath=//a[@class='login']
    Input Text      id=email        mytest101@yopmail.com
    Input Text      id=passwd       Test@12345        
    Press Keys      id=passwd       ENTER
    Sleep           5
    Close Browser
    Log             Test Completed Successfully

LoginTest2-ListVariable
    
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Click Link      xpath=//a[@class='login']
    Input Text      id=email        @{Credentials} [0]
    Input Text      id=passwd       @{Credentials} [1]       
    Press Keys      id=passwd       ENTER
    Sleep           5
    Close Browser
    Log             Test Completed Successfully
    
LoginTest3-DictionaryVariable    
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Click Link      xpath=//a[@class='login']
    Input Text      id=email        &{LoginData} [username]
    Input Text      id=passwd       &{LoginData} [password]       
    Press Keys      id=passwd       ENTER
    Sleep           5
    Close Browser
    Log             Test Completed Successfully
    
LoginTest4-EnvironmentVariable    
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Click Link      xpath=//a[@class='login']
    Input Text      id=email        &{LoginData} [username]
    Input Text      id=passwd       &{LoginData} [password]       
    Press Keys      id=passwd       ENTER
    Sleep           5
    Close Browser
    Log             Test Completed Successfully
    Log             This test is executed by %{username} on %{os}
    
LoginTest5-KeywordCheck 
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Click Link      xpath=//a[@class='login']
    LoginKW
    Sleep           5
    Close Browser
    Log             Test Completed Successfully
    Log             This test is executed by %{username} on %{os}

*** Variables ***

${URL}    http:automationpractice.com
@{Credentials}    mytest101@gmail.com    Test@12345
&{LoginData}    username=mytest101@yopmail.com    password=Test@12345

*** Keywords ***    
LoginKW    

    Input Text      id=email        mytest101@yopmail.com
    Input Text      id=passwd       Test@12345        
    Press Keys      id=passwd       ENTER