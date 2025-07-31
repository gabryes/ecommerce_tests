*** Variables ***
 
&{cadastro}
...    login=//a[text()=" Signup / Login"]
...    nome=//input[@name="name"]
...    email=(//input[@placeholder="Email Address"])[2]
...    botao=//button[text()="Signup"]