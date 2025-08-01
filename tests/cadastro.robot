Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot


*** Casos De Teste ***
Abrir o navegador e realizar cadastro
    Dado que eu abra o navegador
    Quando acesso o cadastro do cliente
    E insiro os dados corretos
    Então o cadastro deve ser concluído com sucesso
    #E 

