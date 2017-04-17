#language: pt
#utf-8

Funcionalidade: Cadastrar empregados OrangeHRM
    Eu como usuario administrador do site
    Quero efetuar o login no site
    Para cadastrar o funcionario

Cenario: Cadastrar empregado
    Dado Que esteja na home do site 
    E o login seja efeuado com sucesso
    Quando Inserir os dados do empregado
    Entao Cadastro efetuado com suceso
     