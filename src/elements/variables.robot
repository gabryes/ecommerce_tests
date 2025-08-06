*** Variables ***

${mensagem_added}   //*[.='View Cart']  
${URL}    https://automationexercise.com/
${navegador}    Chrome
 
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
...    btn_products=(//a [contains(text(), 'Products')])
...    btn_todos_produtos=(//h2[text()='All Products'])
...    btn_antes_do_click_top=(//a[contains(text(), 'View Product')])
...    btn_produto_Top=((//button[contains(., 'Add to cart')]))[1]
...    btn__produto_continuar_comprando=(//button[text()="Continue Shopping"])
...    btn_produto_dress=(//*[@data-product-id='3'])
...    btn_carrinho=(//*[.='View Cart'])  



