*** Settings ***
Documentation    Suite de testes do cadastro de tarefas

Resource    ${EXECDIR}/resources/base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Deve poder cadastrar uma nova tarefa
    Do login
    
    Create a new task    Estudar Python - Pandas