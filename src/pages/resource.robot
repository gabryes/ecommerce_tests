*** Settings ***
Resource  ../main.robot

*** Keywords ***
que eu abra o navegador
    Open Browser  https://automationexercise.com/   Chrome
    Maximize Browser Window
    Sleep    3s

#Cadastro
clico no menu "Signup / Login"
   SeleniumLibrary.Click Element    ${cadastro.login}
   Sleep    2s        

insiro os dados corretos
    Click Element    ${cadastro.nome}
    Input Text    ${cadastro.nome}    Celso
    Input Text    ${cadastro.email}   celsosouzay9@hotmail.com
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
    Input Text    ${cadastro.primeiroNome}  Celso
    Input Text    ${cadastro.ultimoNome}    Souza
    Input Text    ${cadastro.empresa}   Tech_BL
    Input Text    ${cadastro.endereço}   Rua Z
    Input Text    ${cadastro.endereço2}   Rua Sul Lote B
    Select From List By Value    ${cadastro.país}    Canada
    Wait Until Element Is Visible    ${cadastro.país}    5s
    Input Text    ${cadastro.estado}    Bela  
    Input Text    ${cadastro.cidade}    Vancouver
    Input Text    ${cadastro.cep}    A1A3621
    Input Text    ${cadastro.celular}    +1 362 5485 5547
    Click Button    ${cadastro.criarConta}
    ${status}    Run Keyword And Return Status    Element Should Be Visible    ${cadastro.msg_validaçãoConta}
    

o cadastro deve ser concluído com sucesso
    ${status}    Run Keyword And Return Status    Element Should Be Visible    ${cadastro.msg_validaçãoConta}
    IF    ${status}
        Log    Sucesso! Mensagem apareceu
        Capture Page Screenshot
    ELSE
        Log    Erro! Mensagem não apareceu   WARN
        Capture Page Screenshot
    END

clico no botão "continue" para verificar se usuário está logado
    Wait Until Element Is Visible    ${cadastro.acessoConta}    5s
    SeleniumLibrary.Click Element                    ${cadastro.acessoConta}
    Sleep    2s
    ${usuario}                    Get Text    ${cadastro.usuario_validaçãoLogin}
    Log                             ${usuario}
    Should Be Equal                 ${usuario}    Celso

#Cadastro_Exxlusão cadastro
acesso o cadastro do usuário
   Click Element    ${login.logar}
   Input Text    ${login.email}   celsosouzay8@hotmail.com
   Input Text   ${login.senha}    p12346
   Click Button    ${login.botaoLogin}
clico no botão "delete account" 
    # Handle Alert    action=ACCEPT
    Wait Until Element Is Visible    ${cadastro.deletarConta}    5s
    SeleniumLibrary.Click Element                   ${cadastro.deletarConta}
        
o cadastro deve ser excluído com sucesso
    Wait Until Element Is Visible    ${cadastro.msgContaDeletada}    5s
    Element Should Be Visible        ${cadastro.msgContaDeletada}

clico no botão "continue" para finalizar o processo
    Wait Until Element Is Visible    ${cadastro.botaoContinue}    5s
    SeleniumLibrary.Click Element                   ${cadastro.botaoContinue}
    Sleep                           2s

#Login
clico no menu "Signup / Login" para acessar a conta
  Click Element    ${login.logar}

insiro os dados válidos  
  Input Text    ${login.email}   celsosouzay9@hotmail.com
  Input Password    ${login.senha}    p12346

clico no botão "Login"  
  Click Button    ${login.botaoLogin}

a conta deve ser acessada com sucesso
  Wait Until Element Is Visible    ${cadastro.usuario_validaçãoLogin}    5s
    ${status}    Run Keyword And Return Status    Element Should Be Visible     ${cadastro.usuario_validaçãoLogin}
    IF    ${status}
        Log    Sucesso! Usuario logado
        Capture Page Screenshot
    ELSE
        Log    Erro! Usuario nao logado   WARN
        Capture Page Screenshot
    END
  Sleep    2s

#Login_Exclusão conta
acesso a conta do usuário cadastrado
   Click Element    ${login.logar}
   Input Text    ${login.email}   celsosouzay9@hotmail.com
   Input Text   ${login.senha}    p12346
   Click Button    ${login.botaoLogin}

clico no botão "delete account" para excluir a conta
    Wait Until Element Is Visible    ${login.deletarConta}    3s
    SeleniumLibrary.Click Element                   ${login.deletarConta}
    Wait Until Element Is Visible    ${login.msgContaDeletada}    3s

a conta deve ser deletada com sucesso
   Element Should Be Visible        ${login.msgContaDeletada}

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





