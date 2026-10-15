# language: pt
@biblioteca @pastas
Funcionalidade: Conteúdo da pasta

  Contexto:
    Dado que abri a pasta "2º semestre 2026"

  @CT-109
  Cenário: Concordância do contador
    Então vejo "1 música na pasta" (singular)

  @CT-110
  Cenário: Buscar na pasta
    Quando digito "est" em "Buscar na pasta..."
    Então vejo "Estações"

  @CT-111
  Cenário: Voltar para pastas
    Quando toco em "Voltar para Pastas"
    Então vejo a lista de pastas
