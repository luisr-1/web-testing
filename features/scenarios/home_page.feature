#language: pt

Funcionalidade: Validar elementos da homepage
    Como um usuario quero verificar os elementos contidos na home

    @Mercado
    Cenário: Validar minicart em Mercado
        Dado que estou na Home de Mercado
        Então o minicart devera estar com a quantidade de itens igual a 0 