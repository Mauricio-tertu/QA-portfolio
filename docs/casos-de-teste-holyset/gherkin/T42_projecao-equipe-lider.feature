# language: pt
@projecao @equipe @lider
Funcionalidade: Gestão da equipe (líder)

  Contexto:
    Dado que sou líder de "Projeção"
    Quando abro "Ministérios" > "Equipe"

  @CT-164
  Cenário: Seções
    Então vejo as abas "Integrantes" e "Pedidos (1)"
    E "Liderança · 3" e "Integrantes · 4"

  @CT-165
  Cenário: Filtrar por função
    Quando toco no filtro "Violão"
    Então só aparecem integrantes com a função Violão

  @CT-166 @ux
  Cenário: Carregamento sem informação falsa
    Quando a lista ainda está carregando as funções
    Então vejo um skeleton/loading
    E não "Sem função definida" provisório

  @CT-167 @visual
  Cenário: Botão flutuante não cobre ações
    Então o menu "⋮" do último item visível fica acessível
