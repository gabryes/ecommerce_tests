Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot


*** Casos De Teste ***
Logar com dados válidos
   Dado que eu abra o navegador
   Quando clico no menu "Signup / Login" para acessar a conta
   E insiro os dados válidos
   E clico no botão "Login"
   Então a conta deve ser acessada com sucesso

Excluir cadastro do usuário
  Dado que eu abra o navegador
  Quando acesso a conta do usuário cadastrado
  E clico no botão "delete account" para excluir a conta
  Então a conta deve ser deletada com sucesso