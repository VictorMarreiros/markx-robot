*** Settings ***
Documentation    Testes de login

Resource        ../resources/base.resource


*** Test Cases ***
Deve logar com sucesso
    Start session

    Input Text            xpath=//*[@resource-id="apiIp"]        <API-IP>
    Click Element         xpath=//*[@resource-id="signInButton"]

    Wait Until Page Contains        Minhas tarefas        5

    Close session