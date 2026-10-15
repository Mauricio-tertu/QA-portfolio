# language: pt
@projecao @equipe @pedidos
Funcionalidade: Aprovar pedidos de entrada

  Contexto:
    Dado que sou líder de "Projeção"
    Quando abro "Equipe" > "Pedidos (1)"

  @CT-173
  Cenário: Dados do pedido
    Então vejo o nome do solicitante e há quanto tempo pediu ("pediu ontem")

  @CT-174 @smoke
  Cenário: Aceitar pedido
    Quando toco em "Aceitar"
    Então a pessoa entra em "Integrantes"
    E a contagem vira "Pedidos (0)"

  @CT-175
  Cenário: Recusar pedido
    Quando toco em "Recusar" e confirmo
    Então o pedido some e a pessoa não entra no ministério

  @CT-176 @privacidade
  Cenário: Dados mínimos
    Então o e-mail do solicitante aparece parcialmente mascarado
