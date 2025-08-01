*** Variables ***
 
&{cadastro}
...    login=//a[text()=" Signup / Login"]
...    nome=//input[@name="name"]
...    email=(//input[@placeholder="Email Address"])[2]
...    botao=//button[text()="Signup"]


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



