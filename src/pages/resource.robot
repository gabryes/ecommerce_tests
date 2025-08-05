*** Settings ***
Resource  ../main.robot

*** Keywords ***
que eu abra o navegador
    Open Browser  https://automationexercise.com/   Chrome
    Maximize Browser Window
    Sleep    3s

acesso o cadastro do cliente
   SeleniumLibrary.Click Element    ${cadastro.login}
   Sleep    2s        

insiro os dados corretos
    Click Element    ${cadastro.nome}
    Input Text    ${cadastro.nome}    Theo
    Input Text    ${cadastro.email}   Theolimahg3@hotmail.com
    Click Button    ${cadastro.botao}
    Click Button    ${cadastro.titulo}
    Input Password    ${cadastro.senha}    p12346
    Wait Until Element Is Visible    ${cadastro.dia}    5s
    Select From List By Value    ${cadastro.dia}    5
    Wait Until Element Is Visible    ${cadastro.mes}    5s
    Select From List By Value    ${cadastro.mes}    6
    Wait Until Element Is Visible    ${cadastro.ano}    5s
    Select From List By Value    ${cadastro.ano}    2019
    Wait Until Element Is Visible    ${cadastro.ano}    5s      
    Click Element                   ${cadastro.carta}  
    Click Element                   ${cadastro.ofertas}
    Input Text    ${cadastro.primeiroNome}  Theo
    Input Text    ${cadastro.ultimoNome}    Lima
    Input Text    ${cadastro.empresa}   Techo_BF
    Input Text    ${cadastro.endereço}   Rua Castro
    Input Text    ${cadastro.endereço2}   Rua Sul Lote B
    Select From List By Value    ${cadastro.país}    Canada
    Wait Until Element Is Visible    ${cadastro.país}    5s
    Input Text    ${cadastro.estado}    Bela  
    Input Text    ${cadastro.cidade}    Vancouver
    Input Text    ${cadastro.cep}    A1A3621
    Input Text    ${cadastro.celular}    +1 362 5485 5547
    Click Button    ${cadastro.criarConta}

o cadastro deve ser concluído com sucesso
    ${status}    Run Keyword And Return Status    Element Should Be Visible    ${cadastro.msg_validaçãoConta}
    SeleniumLibrary.Click Element    ${cadastro.nome}
    Input Text    ${cadastro.nome}    Theo
    Input Text    ${cadastro.email}   Theolima7@hotmail.com
    Click Button    ${cadastro.botao}
    Click Button    ${cadastro.titulo}
    Input Password    ${cadastro.senha}    p12346
    Wait Until Element Is Visible    ${cadastro.dia}    5s
    Select From List By Value    ${cadastro.dia}    5
    Wait Until Element Is Visible    ${cadastro.mes}    5s
    Select From List By Value    ${cadastro.mes}    6
    Wait Until Element Is Visible    ${cadastro.ano}    5s
    Select From List By Value    ${cadastro.ano}    2019
    Wait Until Element Is Visible    ${cadastro.ano}    5s      
    SeleniumLibrary.Click Element                   ${cadastro.carta}  
    SeleniumLibrary.Click Element                   ${cadastro.ofertas}
    Input Text    ${cadastro.primeiroNome}  Theo
    Input Text    ${cadastro.ultimoNome}    Lima
    Input Text    ${cadastro.empresa}   Techo_BF
    Input Text    ${cadastro.endereço}   Rua Castro
    Input Text    ${cadastro.endereço2}   Rua Sul Lote B
    Select From List By Value    ${cadastro.país}    Canada
    Wait Until Element Is Visible    ${cadastro.país}    5s
    Input Text    ${cadastro.estado}    Bela  
    Input Text    ${cadastro.cidade}    Vancouver
    Input Text    ${cadastro.cep}    A1A3621
    Input Text    ${cadastro.celular}    +1 362 5485 5547
    Click Button    ${cadastro.criarConta}

o cadastro deve ser concluído com sucesso
    ${status}    Run Keyword And Return Status    Element Should Be Visible    ${cadastro.msg_validaçãoConta}
    IF    ${status}
        Log    Sucesso! Mensagem apareceu
        Capture Page Screenshot
    ELSE
        Log    Erro! Mensagem não apareceu   WARN
        Capture Page Screenshot
    END


clico no botão "continue" para vefificar se usuário está logado
    Wait Until Element Is Visible    ${cadastro.acessoConta}    5s
    SeleniumLibrary.Click Element                    ${cadastro.acessoConta}
    Sleep    2s
    
clico no botão "continue" para vefificar se usuário está logado
    Wait Until Element Is Visible    ${cadastro.acessoConta}    5s
    Click Element                    ${cadastro.acessoConta}
    ${usuario}=                     Get Text    ${cadastro.usuario_validaçãoLogin}
    Log                             ${usuario}
    Should Be Equal                 ${usuario}    Theo


clico no botão "delete account" para deletar a conta
    # Handle Alert    action=ACCEPT
    # RPA.JavaAccessBridge.Press Keys

    Wait Until Element Is Visible    ${cadastro.deletarConta}    5s
    SeleniumLibrary.Click Element                   ${cadastro.deletarConta}
    Wait Until Element Is Visible    ${cadastro.msgContaDeletada}    5s
    Element Should Be Visible        ${cadastro.msgContaDeletada}

clico no botão "continue" para finalizar o processo
    Wait Until Element Is Visible    ${cadastro.botaoContinue}    5s
    SeleniumLibrary.Click Element                   ${cadastro.botaoContinue}
    Sleep                           2s

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


