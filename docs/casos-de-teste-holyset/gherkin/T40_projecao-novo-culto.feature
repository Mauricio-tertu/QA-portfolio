# language: pt
@projecao @escalas @criacao
Funcionalidade: Agendar novo culto

  Contexto:
    Dado que sou líder de "Projeção"
    Quando abro "Agendar novo culto"

  @CT-159 @smoke
  Cenário: Criar culto
    Quando preencho "Nome do culto / evento" com "Culto 24/10"
    E escolho a data "24/10/2026"
    E toco em "Criar Culto"
    Então o culto aparece em "Próximas"
    E um checklist é gerado para ele

  @CT-160 @negativo
  Cenário: Data no passado
    Quando escolho uma data anterior a hoje
    Então vejo um aviso ou o culto vai direto para "Anteriores"

  @CT-161 @negativo
  Cenário: Campos obrigatórios
    Quando toco em "Criar Culto" sem preencher nada
    Então nenhum culto é criado
