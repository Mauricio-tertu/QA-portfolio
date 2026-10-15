# language: pt
@diaconia @escalas
Funcionalidade: Escalas da Diaconia

  @CT-144
  Cenário: Cultos sem equipe
    Quando abro "Escalas" > "Por ministério" com a Diaconia em uso
    Então vejo "Diaconia · 3 próximos · 3 cultos no total"
    E os cultos sem escala mostram "Ninguém escalado"

  @CT-145
  Cenário: Detalhe com notas
    Quando abro "Culto 17"
    Então vejo "Responsável X · Responsável", "Integrante C · Equipe"
    E as "Notas do dia" com o texto cadastrado

  @CT-146 @acessibilidade
  Cenário: Rótulo acessível das notas
    Dado que o culto tem notas
    Então o leitor de tela anuncia o texto das notas
    E não "Nenhuma observação adicionada."
