# language: pt
@diaconia @inicio
Funcionalidade: Início da Diaconia

  Contexto:
    Dado que o ministério em uso é "Diaconia"
    Quando abro "Início"

  @CT-127
  Cenário: Cards exclusivos
    Então vejo o card "Visitantes" com "0 no total"
    E o card "Avaliação" com o mês atual
    E os atalhos "Escalas da equipe", "Equipe" e "Checklist do culto"

  @CT-128
  Cenário: Navegar pela avaliação
    Quando toco em "Mês anterior" no card "Avaliação"
    Então vejo a avaliação de setembro de 2026
    E "Próximo mês" fica desabilitado quando estou no mês atual

  @CT-129
  Cenário: Abrir visitantes
    Quando toco no card "Visitantes"
    Então abre "Checklist" > "Visitantes"
