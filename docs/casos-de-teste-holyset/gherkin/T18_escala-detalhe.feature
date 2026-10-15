# language: pt
@escalas @detalhe
Funcionalidade: Detalhe da escala

  Contexto:
    Dado que abri a escala "Culto 17/10"

  @CT-077
  Cenário: Cabeçalho
    Então vejo "Sábado, 17 de outubro", o nome "Culto 17/10" e "Equipe · 7 integrantes"

  @CT-078
  Cenário: Equipe com funções
    Então cada integrante aparece com avatar, nome e função (ex.: "Baixo")
    E "Ministro" e "Diretor musical" aparecem como papéis de destaque

  @CT-079 @dados
  Cenário: Nome de exibição
    Então nenhum integrante é exibido pelo username/prefixo de e-mail

  @CT-080
  Cenário: Repertório vinculado
    Quando toco em "Culto 17/10 · 4 louvores · ver repertório"
    Então abre a playlist do culto

  @CT-081 @permissao
  Cenário: Notas do culto somente leitura para membro
    Dado que sou membro sem permissão de edição
    Quando toco em "Notas do culto"
    Então nada é editável
