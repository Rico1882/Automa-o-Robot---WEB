*** Settings ***
Documentation              login tests

Resource    ../resources/main.resource

*** Test Cases ***
Deve logar com Sucesso
    Go To login Page
    Submit Credentials        papito@gmail.com    vaibrasil
    User Logged In
    
Não deve logar com senha incorreta
    Go To login Page
    Submit Credentials        papito@gmail.com    abc123
    Toast Message Should Be   Credenciais inválidas, tente novamente!
    







      