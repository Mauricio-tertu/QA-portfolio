# language: pt
@escalas @agenda
Funcionalidade: Minha agenda

  @CT-068
  Cenário: Sem escalas
    Dado que não estou escalado em nenhum culto futuro
    Quando abro "Escalas" > "Minha agenda"
    Então vejo "Você não está escalado nos próximos cultos."
    E o link "Ver escalas por ministério"

  @CT-069
  Cenário: Escalas de vários ministérios
    Dado que estou escalado no Louvor e na Diaconia
    Quando abro "Minha agenda"
    Então vejo as duas escalas em ordem de data, cada uma com o nome do ministério

  @CT-070
  Cenário: Atalho para escalas por ministério
    Quando toco em "Ver escalas por ministério"
    Então a aba "Por ministério" é aberta
