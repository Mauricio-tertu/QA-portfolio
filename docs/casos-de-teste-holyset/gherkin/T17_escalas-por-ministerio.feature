# language: pt
@escalas
Funcionalidade: Escalas da equipe por ministério

  Contexto:
    Dado que o ministério em uso é "Louvor"
    Quando abro "Escalas" > "Por ministério"

  @CT-071
  Cenário: Resumo no cabeçalho
    Então vejo "Louvor · 3 próximos · 9 cultos no total"

  @CT-072
  Cenário: Próximas escalas
    Então vejo os cultos futuros agrupados por mês em ordem crescente
    E o primeiro tem a etiqueta "Próximo"
    E cada card mostra dia da semana, data, nome, avatares e "N pessoas"

  @CT-073
  Cenário: Escalas anteriores
    Quando toco em "Anteriores"
    Então vejo os cultos passados em ordem decrescente agrupados por mês
    E "Próximas" + "Anteriores" somam o total do cabeçalho

  @CT-074
  Cenário: Abrir detalhe
    Quando toco no culto "Culto 17/10"
    Então abre o detalhe da escala

  @CT-075
  Cenário: Trocar ministério
    Quando toco em "Trocar"
    Então vou para a lista de ministérios

  @CT-076 @dados
  Cenário: Padrão de nome dos cultos
    Então os nomes dos cultos seguem um padrão único (ex.: "Culto dd/mm")
