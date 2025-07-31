*** Settings ***
Resource  ../main.robot

Library    SeleniumLibrary

*** Keywords ***
que eu abra o navegador
    Open Browser  https://automationexercise.com/   Chrome
    Sleep    3s