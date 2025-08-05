*** Variables ***
 
&{cadastro}
...    login=//a[text()=" Signup / Login"]
...    nome=//input[@name="name"]
...    email=(//input[@placeholder="Email Address"])[2]
...    botao=//button[text()="Signup"]
...    titulo=(//input[@name="title"])[2]
...    senha=//input[@type=("password")]
...    dia=//select[@data-qa='days']
...    mes=//select[@data-qa='months']
...    ano=//select[@data-qa='years']
...    carta=//*[@id="newsletter"]
...    ofertas=//*[@id="optin"]
...    primeiroNome=//*[@id="first_name"]
...    ultimoNome=//*[@id="last_name"]
...    empresa=//input[@data-qa='company']
...    endereço=//input[@data-qa='address']
...    endereço2=//input[@data-qa='address2']
...    país=//select[@data-qa='country']
...    estado=//input[@data-qa='state']
...    cidade=//input[@data-qa='city']
...    cep=//input[@data-qa='zipcode']
...    celular=//input[@data-qa='mobile_number']
...    criarConta=//button[@data-qa="create-account"]
...    msg_validaçãoConta=//b[text()="Account Created!"]
...    acessoConta=//a[contains(text(),"Continue")]
...    usuario_validaçãoLogin=//ul[@class='nav navbar-nav']/li/a/b
...    deletarConta=//a[text()=' Delete Account']
...    msgContaDeletada=//b[text()='Account Deleted!']
...    botaoContinue=//a[@class='btn btn-primary']



&{menu}
...    login=//a[text()=" Signup / Login"]
...    sac=//a[text()=" Contact us"]


&{sac}
...    nome=//input[@placeholder="Name"]
...    email=//input[@placeholder="Email"]
...    assunto=//input[@placeholder="Subject"]
...    conteudo=//textarea[@placeholder="Your Message Here"]
...    btn_enviar=//input[@name="submit"]
...    popup_ok=//button[@id='ok']
...    msg_sucesso=//div[@class="status alert alert-success"]

&{item}
...    btn_test_cases=(//button[text()="Test Cases"])[1]




