Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot


*** Casos De Teste ***
Abrir o navegador e realizar cadastro
    Dado que eu abra o navegador
    Quando clico no menu "Signup / Login"
    E insiro os dados corretos
    Então o cadastro deve ser concluído com sucesso
    E clico no botão "continue" para verificar se usuário está logado
    
Deletar cadastro do usuário
    Dado que eu abra o navegador
    Quando acesso o cadastro do usuário
    E clico no botão "delete account" 
    Então o cadastro deve ser excluído com sucesso
    E clico no botão "continue" para finalizar o processo
