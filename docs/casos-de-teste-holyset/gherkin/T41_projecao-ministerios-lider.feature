# language: pt
@projecao @ministerios
Funcionalidade: Indicadores de liderança

  @CT-162
  Cenário: Selo de pedidos
    Dado que sou líder de "Projeção" e há 1 pedido pendente
    Quando abro "Ministérios"
    Então o card "Projeção" mostra "Em uso" e "1 pedido"
    E a aba aparece como "Equipe · 1"

  @CT-163
  Cenário: Selo some depois de tratar o pedido
    Quando aceito ou recuso o pedido
    Então o selo "1 pedido" deixa de aparecer
