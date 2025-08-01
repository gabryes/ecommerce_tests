*** Settings ***
Resource  ../main.robot

Library    SeleniumLibrary
Library    RPA.Desktop
Library    RPA.JavaAccessBridge

*** Keywords ***
que eu abra o navegador
    Open Browser  https://automationexercise.com/   Chrome
    Sleep    3s

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
    ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${sac.msg_sucesso}
    IF    ${status}
        Log    Sucesso! Mensagem apareceu
    ELSE
        Log    Erro! Mensagem não apareceu
    END
    Sleep    5s
