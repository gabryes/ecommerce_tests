Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot
Library  SeleniumLibrary

*** Casos De Teste ***
Abrir o navegador e realizar cadastro
    Dado que eu abra o navegador
    # Quando insiro os dados corretos
    # Então O cadastro deve ser concluído com sucesso