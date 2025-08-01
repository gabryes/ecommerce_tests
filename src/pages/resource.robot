*** Settings ***
Resource  ../main.robot

*** Keywords ***
que eu abra o navegador
    Open Browser  https://automationexercise.com/   Chrome
    Sleep    3s

acesso o cadastro do cliente
   Click Element    ${cadastro.login}
   Sleep    2s        

insiro os dados corretos
    Click Element    ${cadastro.nome}
    Input Text    ${cadastro.nome}    Lucia
    Input Text    ${cadastro.email}   lucia@gmail.com
    Click Button    ${cadastro.botao}
    Click Button    ${cadastro.titulo}
    Input Password    ${cadastro.senha}    p12346
    Wait Until Element Is Visible    ${cadastro.dia}    5s
    Select From List By Value    ${cadastro.dia}    5
    Wait Until Element Is Visible    ${cadastro.mes}    5s
    Select From List By Value    ${cadastro.mes}    6
    Wait Until Element Is Visible    ${cadastro.ano}    5s
    Select From List By Value    ${cadastro.ano}    2018
    Wait Until Element Is Visible    ${cadastro.ano}    5s      
    Click Element                   ${cadastro.carta}  
    Click Element                   ${cadastro.ofertas}
    Input Text    ${cadastro.primeiroNome}  Lucia
    Input Text    ${cadastro.ultimoNome}    VasquesMoreira
    Input Text    ${cadastro.empresa}   Tech_info
    Input Text    ${cadastro.endereço}   Rua Lopes Alves
    Input Text    ${cadastro.endereço2}   Rua Casemiro Lote B
    Select From List By Value    ${cadastro.país}    Canada
    Wait Until Element Is Visible    ${cadastro.país}    5s
    Input Text    ${cadastro.estado}    Bela  
    Input Text    ${cadastro.cidade}    Vancouver
    Input Text    ${cadastro.cep}    A1A3621
    Input Text    ${cadastro.celular}    +1 362 5485 2412
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
    Sleep    2s