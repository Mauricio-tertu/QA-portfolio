# language: pt
@som
Funcionalidade: Ministério de Som (membro)

  Contexto:
    Dado que o ministério em uso é "Som"

  @CT-147
  Cenário: Sem cultos
    Quando abro "Escalas" > "Por ministério"
    Então vejo "Som · 0 próximos · 0 cultos no total" e "NENHUM CULTO AGENDADO"

  @CT-148 @permissao
  Cenário: Membro não vê ação de criar culto
    Então não vejo "Criar Primeiro Culto" nem o botão flutuante

  @CT-149
  Cenário: Atalhos do Início
    Quando abro "Início"
    Então vejo "Escalas da equipe", "Equipe" e "Checklists"
