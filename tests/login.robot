Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot


*** Casos De Teste ***
Logar com dados válidos  
   Dado que eu abra o navegador
   Quando que eu clico no menu "Signup / Login"
   E insiro os dados válidos
   E clico no botão "Login"
   Então usuario deve ser direcionado para página inicial


#Excluir cadastro do usuário
#Dado que eu esteja logado
#Quando acesso o cadastro do cliente
#E clico no botão "delete account" 
#E verifico se apareceu mensagem "account deleted" apareceu na tela