*** Settings ***

Library    SeleniumLibrary

Test Setup         Log    I am inside my Test Setup
Test Teardown      Log    I am outside my Test Setup 
Suite Setup        Log    I am inside my Test Suite Setup
Suite Teardown     Log    I am outside my Test Suite Teardown

Default Tags    Smoke

*** Test Cases ***

MyFirstTest
    [Tags]    Sanity
    Log     Welcome to the first test
     
MySecondTest
    Log     Welcome to the second test
    Set Tags    Regression1

MyThirdTest
    [Tags]    Sanity
    Log     Welcome to the third test
    
MyFourthTest
    Log     Welcome to the fourth test
    Set Tags    Regression1
    Remove Tags     Regression1
    
MyFifthTest
    [Tags]    Sanity    Regression4
    Log     Welcome to the fifth test
    
MySixthTest
    Log     Welcome to the sixth test
    Set Tags    Regression2
    
MySeventhTest
    [Tags]    Sanity
    Log     Welcome to the seventh test
    
MyEigththTest
    Log     Welcome to the eighth test
    Set Tags    Regression2
    Remove Tags     Regression2  
MyNinthTest
    [Tags]    Sanity
    Log     Welcome to the ninth test
    
MyTenthTest
    Log     Welcome to the tenth test
    Set Tags    Regression3