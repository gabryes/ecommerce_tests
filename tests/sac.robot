Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot
Library  SeleniumLibrary

*** Casos De Teste ***
Abrir o navegador e realizar cadastro
    Dado que eu abra o navegador
    Quando acesso a página de SAC
    E insiro os dados corretos para SAC
    Então o formulario de SAC deve ser enviado com sucesso