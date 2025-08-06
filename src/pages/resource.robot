*** Settings ***
Resource  ../main.robot

*** Keywords ***
que eu abra o navegador
    Open Browser  ${URL}      ${navegador}
    Sleep    3s
    Maximize Browser Window
    Wait Until Page Contains Element    ${item.btn_test_cases}

acesso o cadastro do cliente
   SeleniumLibrary.Click Element    ${cadastro.login}
   Sleep    2s        

insiro os dados corretos
    SeleniumLibrary.Click Element    ${cadastro.nome}
    Input Text    ${cadastro.nome}    Priscila
    Input Text    ${cadastro.email}   priscila@gmail.com
    Click Button    ${cadastro.botao}
    Sleep    2s

# Ouvidoria
acesso a página de SAC
    ${status}    Run Keyword And Return Status    Element Should Be Visible    ${item.btn_test_cases}
    IF    ${status}
        Log    Sucesso! Acessou a página Home
        Capture Page Screenshot
    ELSE
        Log    Erro! Página Home não foi apresentada  WARN
        Capture Page Screenshot
    END
    SeleniumLibrary.Click Element    ${menu.sac}
    
insiro os dados corretos para SAC
    Input Text    ${sac.nome}    Gabriel
    Input Text    ${sac.email}    gabriel@gabriel.com
    Input Text    ${sac.assunto}    Feedback da Compra
    Input Text    ${sac.conteudo}    Foi uma compra muito boa!
    Click Button  ${sac.btn_enviar}
    Sleep    2s
    Handle Alert    action=ACCEPT 
    
o formulario de SAC deve ser enviado com sucesso
    ${status}    Run Keyword And Return Status    Element Should Be Visible    ${sac.msg_sucesso}
    IF    ${status}
        Log    Sucesso! Mensagem apareceu
        Capture Page Screenshot
    ELSE
        Log    Erro! Mensagem não apareceu   WARN
        Capture Page Screenshot
    END
    Sleep    5s
#Produtos
Que estou na página inicial
    Element Should Be Visible    ${item.btn_test_cases}
Quando Clico em "products"
    Double Click Element   ${item.btn_products}
    
E Verifico o produto "Blue Top"
    Double Click Element    ${item.btn_antes_do_click_top}    
    Element Should Be Visible    ${item.btn_produto_Top} 
Então Adiciono o produto ao carrinho  

    Double Click Element    ${item.btn_produto_Top}
        Capture Page Screenshot
#Dado que estou na página de "products"
    Click Button    {}
#E continuo comprando
#Quando clico em ver carrinho
#Então verifico se dois produtos foram adicionados

   
    