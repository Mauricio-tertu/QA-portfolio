# language: pt
@projecao @equipe @lider
Funcionalidade: Ações sobre integrante

  Contexto:
    Dado que sou líder de "Projeção"
    E abri o menu "⋮" de "Integrante D"

  @CT-168
  Cenário: Opções disponíveis
    Então vejo "Editar funções", "Tornar admin" e "Remover da equipe"

  @CT-169
  Cenário: Editar funções
    Quando toco em "Editar funções" e marco "Projeção"
    E salvo
    Então o card mostra "Projeção" como função

  @CT-170
  Cenário: Tornar admin
    Quando toco em "Tornar admin" e confirmo
    Então "Integrante D" passa para "Liderança"

  @CT-171 @destrutivo
  Cenário: Remover da equipe pede confirmação
    Quando toco em "Remover da equipe"
    Então vejo uma confirmação com o nome da pessoa
    Quando confirmo
    Então ela sai da lista e perde o acesso ao ministério

  @CT-172 @negativo
  Cenário: Líder não remove a si mesmo se for o único admin
    Dado que sou o único líder
    Então "Remover da equipe" não aparece no meu próprio menu
