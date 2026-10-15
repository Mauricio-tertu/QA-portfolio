# language: pt
@playlists @detalhe
Funcionalidade: Ordem do culto

  Contexto:
    Dado que abri a playlist "Culto 17/10"

  @CT-086
  Cenário: Conteúdo
    Então vejo "Sábado, 17 de outubro · 4 louvores"
    E a "Escala vinculada" com os avatares
    E as músicas numeradas com artista e tom

  @CT-087
  Cenário: Abrir no YouTube
    Quando toco em "⋯" e depois em "Abrir no YouTube"
    Então a playlist abre no YouTube em nova aba

  @CT-088 @permissao
  Cenário: Opções de edição só para quem pode editar
    Dado que sou membro sem permissão de edição
    Quando toco em "⋯"
    Então não vejo "Editar" nem "Excluir"
    E o rótulo acessível do botão não menciona editar/excluir

  @CT-089 @navegacao
  Cenário: Voltar para a origem
    Dado que abri a playlist a partir do detalhe da escala
    Quando toco em voltar
    Então volto para o detalhe da escala

  @CT-090 @dados
  Cenário: Revisão de conteúdo
    Então os títulos não têm erros de digitação (ex.: "Eu vou construir")
