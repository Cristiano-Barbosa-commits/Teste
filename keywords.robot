*** Keywords ***
Abrir o Navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Dado que o usuário esteja no site https://phptravels.com/demo/

    go to  url=${URL}

Quando preencher todos os dados com dados válidos
   Input Text       locator=//input[contains(@name,'first_name')]    text="Evino"
   Input Text       locator=//input[contains(@name,'last_name')]    text="Hans"
   Input Text       locator=//input[contains(@name,'business_name')]    text="Conglomerado"
   Input Text       locator=//input[contains(@class,'email form-control')]    text="evino@gmail.com"

Quando preencher todos os dados com dados válidos menos o e-mail 
   Input Text       locator=//input[contains(@name,'first_name')]    text="Evino"
   Input Text       locator=//input[contains(@name,'last_name')]    text="Hans"
   Input Text       locator=//input[contains(@name,'business_name')]    text="Conglomerado"

E realizar o calculo da soma e preencher no campo Result
    Wait Until Element Is Visible    id=numb1
    ${soma}=  Evaluate  ${valor1} + ${valor2}
    Input Text    locator=//input[contains(@class,'form-control w-100')]    text=${soma}
E clicar no botão Submit
    Click Element   id=demo

Então o sistema deve apresentar a tela com a mensagem “Thank you!”
    Wait Until Element Contains    locator=//h2[@class='text-center cw'][contains(.,'Thank you!')]   text=" Thank you!"

Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
    Alert Should Be Present
