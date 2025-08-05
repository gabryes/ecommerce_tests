Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot


*** Casos De Teste ***
Abrir o navegador e realizar cadastro
    Dado que eu abra o Browser
    Quando acesso o cadastro do cliente
    E insiro os dados corretos
    Então o cadastro deve ser concluído com sucesso
    E clico no botão "continue" para vefificar se usuário está logado
    E clico no botão "delete account" para deletar a conta
    E clico no botão "continue" para finalizar o processo
    

