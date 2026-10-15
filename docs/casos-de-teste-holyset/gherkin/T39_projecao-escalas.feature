# language: pt
@projecao @escalas
Funcionalidade: Escalas da Projeção (líder)

  @CT-157 @visual
  Cenário: Estado vazio legível
    Dado que "Projeção" não tem cultos
    Quando abro "Escalas" > "Por ministério"
    Então "NENHUM CULTO AGENDADO" não fica coberto pelo botão flutuante

  @CT-158
  Cenário: Duas entradas para criar culto
    Quando toco em "Criar Primeiro Culto" ou em "Novo culto no Projeção"
    Então abre o mesmo modal "Agendar novo culto"
