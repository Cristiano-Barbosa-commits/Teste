
*** Settings ***

Documentation
Resource    primeResources.robot
Test Setup  Abrir o Navegador
*** Test Cases ***
Caso de Teste 1 – criar um novo cadastro com sucesso
      [Documentation]     Esse teste verifica se o cadastro é efetuado com sucesso.
      [Tags]              Cadastro
    Dado que o usuário esteja no site https://phptravels.com/demo/
    Quando preencher todos os dados com dados válidos
    E realizar o calculo da soma e preencher no campo Result
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem “Thank you!”

Caso de Teste 2 – Tentar fazer um cadastro sem um campo obrigatório 
       [Tags]              Cadastro
    Dado que o usuário esteja no site https://phptravels.com/demo/
    Quando preencher todos os dados com dados válidos menos o e-mail 
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
