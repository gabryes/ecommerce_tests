Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot


*** Casos De Teste ***
Logar com dados válidos  
...  #Dado que acesse o site 'http://automationexercise.com'
     #Quando clico no menu "Signup/Login"
     #E insiro os dados válidos
     #E clico no botão "Login"
     #Então o usuário é logado realizado com sucesso
     #E clico no botão "delete account" 
     #E verifico se apareceu mensagem "account deleted" apareceu na tela