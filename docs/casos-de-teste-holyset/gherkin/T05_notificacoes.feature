# language: pt
@notificacoes
Funcionalidade: Central de notificações

  Contexto:
    Dado que estou na tela "Início"
    Quando toco no ícone de sino

  @CT-022
  Cenário: Listar notificações
    Então vejo o painel "Notificações"
    E cada item mostra título, descrição, ministério e tempo relativo

  @CT-023
  Cenário: Ordenação cronológica
    Então as notificações estão em ordem da mais recente para a mais antiga

  @CT-024 @destrutivo
  Cenário: Limpar histórico
    Quando toco no ícone de lixeira
    Então devo ver uma confirmação antes de apagar
    Quando confirmo
    Então a lista fica vazia com uma mensagem de estado vazio

  @CT-025
  Cenário: Fechar painel
    Quando toco em "Fechar"
    Então o painel é fechado

  @CT-026
  Cenário: Rolagem interna
    Dado que existem mais notificações do que cabem no painel
    Quando rolo dentro do painel
    Então a página de fundo não rola
