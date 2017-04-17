#language: pt
#utf-8

Funcionalidade: Editar empregados OrangeHRM
    Eu como usuario administrador do site
    Quero efetuar uma consulta
    Para editar o funcionario

Cenario: Cadastrar empregado
    Dado Acessar tela de consulta
    E Pesquisar os dados do empregado
    Quando Dados encontrados com sucesso
    Entao Atualizacao realizada com suceso