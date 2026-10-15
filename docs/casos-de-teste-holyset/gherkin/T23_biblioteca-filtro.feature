# language: pt
@biblioteca @filtro
Funcionalidade: Filtrar por categoria

  Contexto:
    Dado que estou em "Biblioteca" > "Músicas"
    Quando toco em "Filtrar por Categoria"

  @CT-101
  Cenário: Filtrar por Adoração
    Quando seleciono "Adoração"
    Então o botão vira "Filtrando: Adoração" com um "×"
    E vejo só "Cristo" e "Era Eu"

  @CT-102 @negativo
  Cenário: Categoria sem músicas
    Quando seleciono "Soberania"
    Então vejo um estado vazio que cita o filtro de categoria
    E o estado vazio fica totalmente visível acima da navegação inferior

  @CT-103
  Cenário: Remover filtro
    Dado que estou filtrando por "Adoração"
    Quando toco no "×" ou em "Todas"
    Então a lista completa volta

  @CT-104
  Cenário: Criar categoria personalizada
    Quando toco em "Personalizar"
    E digito "Natal" em "Nova categoria..."
    E toco em "+"
    Então o chip "Natal" aparece na lista de categorias

  @CT-105 @negativo
  Cenário: Categoria duplicada ou vazia
    Quando tento criar a categoria "Adoração" ou um nome vazio
    Então a criação é bloqueada com mensagem

  @CT-106
  Cenário: Busca combinada com filtro
    Dado que estou filtrando por "Adoração"
    Quando busco "era"
    Então vejo só "Era Eu"
