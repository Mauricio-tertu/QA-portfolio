# language: pt
@iluminacao
Funcionalidade: Ministério de Iluminação (membro)

  Contexto:
    Dado que o ministério em uso é "Iluminação"

  @CT-185
  Cenário: Atalhos do Início
    Quando abro "Início"
    Então vejo "Escalas da equipe", "Equipe" e "Checklists"

  @CT-186
  Cenário: Equipe
    Quando abro "Ministérios" > "Equipe"
    Então vejo "Liderança · 2" e "Integrantes · 4"
    E não vejo menus de gestão "⋮"

  @CT-187 @ux
  Cenário: Filtros de função condizentes com o ministério
    Então os filtros mostram funções de iluminação, não instrumentos musicais
