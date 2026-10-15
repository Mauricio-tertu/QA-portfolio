# language: pt
@diaconia @checklist
Funcionalidade: Lista de checklists por culto

  Contexto:
    Quando abro "Checklist" > "Cultos"

  @CT-132
  Cenário: Próximos cultos com progresso
    Então vejo "Culto 17", "Culto 24" e "Culto 31"
    E cada um mostra "0/16 tarefas"

  @CT-133
  Cenário: Anteriores vazio
    Quando toco em "Anteriores"
    Então vejo "NENHUM CULTO ANTERIOR" e a orientação para criar o culto em Escalas

  @CT-134
  Cenário: Culto criado em Escalas gera checklist
    Dado que um líder criou o culto "Culto 07/11" em Escalas
    Então o checklist desse culto aparece em "Próximos"
