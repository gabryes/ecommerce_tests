*** Settings ***
Resource  ../main.robot

Library    SeleniumLibrary

*** Keywords ***
que eu abra o navegador
    Open Browser  https://automationexercise.com/   Chrome
    Sleep    3s

acesso o cadastro do cliente
   Click Element    ${cadastro.login}
   Sleep    2s        

insiro os dados corretos
    Click Element    ${cadastro.nome}
    Input Text    ${cadastro.nome}    Priscila
    Input Text    ${cadastro.email}   priscila@gmail.com
    Click Button    ${cadastro.botao}
    Sleep    2s