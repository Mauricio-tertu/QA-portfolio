# language: pt
@agenda @calendario
Funcionalidade: Calendário da agenda

  Contexto:
    Dado que estou na tela "Início"
    Quando toco em "Ver tudo"

  @CT-027
  Cenário: Abrir no mês atual com hoje selecionado
    Então vejo "Outubro 2026"
    E o dia 15 está destacado como hoje
    E o rodapé mostra "Quinta-feira, 15 de outubro" com a etiqueta "hoje"

  @CT-028
  Cenário: Selecionar outro dia
    Quando toco no dia 17
    Então o rodapé mostra "Sábado, 17 de outubro" com a etiqueta "em 2 dias"
    E o dia 15 continua marcado com contorno de "hoje"

  @CT-029
  Cenário: Navegar entre meses
    Quando toco em "Próximo mês"
    Então vejo "Novembro 2026"
    Quando toco em "Mês anterior"
    Então volto para "Outubro 2026"

  @CT-030
  Cenário: Dia com escala
    Dado que estou escalado no dia 24
    Então o dia 24 tem um indicador visual
    Quando toco no dia 24
    Então o rodapé lista o culto e minha função

  @CT-031 @acessibilidade
  Cenário: Rótulos acessíveis dos dias
    Então cada dia tem aria-label no formato "17 de outubro"
    E o dia atual é anunciado como "Hoje, 15 de outubro"

  @CT-032
  Cenário: Fechar calendário
    Quando toco em "Fechar calendário"
    Então volto para a tela "Início"
