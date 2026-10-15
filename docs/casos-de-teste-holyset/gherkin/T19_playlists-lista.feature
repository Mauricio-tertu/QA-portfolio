# language: pt
@playlists
Funcionalidade: Lista de playlists

  Contexto:
    Dado que o ministério em uso é "Louvor"
    Quando abro "Playlists"

  @CT-082
  Cenário: Resumo
    Então vejo "4 playlists cadastradas"

  @CT-083
  Cenário: Card da playlist
    Então cada card mostra data, nome, avatares da equipe e o total de músicas

  @CT-084 @ux
  Cenário: Ordenação
    Então a ordem segue o mesmo critério da tela Escalas (próximas primeiro)

  @CT-085
  Cenário: Abrir playlist
    Quando toco em "Culto 17/10"
    Então abre a ordem do culto com 4 louvores
