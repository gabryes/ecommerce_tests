Language: Brazilian Portuguese
*** Settings ***
Resource  ../src/main.robot
Suite Setup    Que eu abra o navegador
Suite Teardown    Close Browser

*** Casos De Teste ***

Adicionar produtos ao carrinho 
    Dado Que estou na página inicial
    Quando Clico em "products"
    E Verifico o produto "Blue Top"
    Então Então Adiciono o produto ao carrinho

#Verificar produtos no carrinho 
#    Dado que estou na página de "products"
#    E continuo comprando
#    Quando clico em ver carrinho
#    Então verifico se dois produtos foram adicionados