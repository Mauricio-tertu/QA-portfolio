# language: pt
@som @checklist @regressao
Funcionalidade: Checklists de ministérios técnicos

  @CT-150
  Cenário: Estrutura mínima da tela
    Dado que o ministério em uso é "Som"
    Quando toco em "Checklists" no Início
    Então vejo um título de página e um botão de voltar
    E um estado vazio explicando como criar checklists

  @CT-151
  Cenário: Volta pelo sistema
    Quando uso o voltar do navegador/dispositivo
    Então retorno ao Início
