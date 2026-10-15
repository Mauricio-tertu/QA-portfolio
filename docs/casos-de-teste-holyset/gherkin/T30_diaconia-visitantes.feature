# language: pt
@diaconia @visitantes
Funcionalidade: Visitantes

  @CT-130
  Cenário: Estado vazio
    Dado que nenhum visitante foi registrado
    Quando abro "Checklist" > "Visitantes"
    Então vejo "NENHUM VISITANTE AINDA" e a explicação de onde eles aparecem

  @CT-131
  Cenário: Visitante registrado aparece na lista
    Dado que um visitante foi registrado no checklist de "Culto 17"
    Quando abro "Visitantes"
    Então vejo nome, telefone e data do culto
