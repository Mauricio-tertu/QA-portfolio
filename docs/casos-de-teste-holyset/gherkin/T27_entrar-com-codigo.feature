# language: pt
@ministerios @convite
Funcionalidade: Entrar em ministério por código

  Contexto:
    Dado que estou em "Ministérios"
    Quando toco em "Entrar com código"

  @CT-116
  Cenário: Estado inicial
    Então vejo o placeholder "EX: K7Q2MZ4P"
    E o botão "Entrar" está desabilitado

  @CT-117
  Cenário: Código em maiúsculas automaticamente
    Quando digito "teste123"
    Então o campo mostra "TESTE123"

  @CT-118 @negativo
  Cenário: Código inválido
    Quando digito um código inexistente
    Então vejo um indicador de carregamento
    E depois "Código inválido ou desativado."
    E "Entrar" continua desabilitado

  @CT-119 @smoke
  Cenário: Código válido com aprovação
    Dado que o convite exige aprovação do líder
    Quando digito um código válido e toco em "Entrar"
    Então vejo que meu pedido foi enviado
    E o líder vê o pedido na aba "Pedidos"

  @CT-120
  Cenário: Código válido sem aprovação
    Dado que o convite não exige aprovação
    Quando digito um código válido e toco em "Entrar"
    Então o ministério aparece na minha lista

  @CT-121 @negativo
  Cenário: Código de ministério do qual já participo
    Quando digito o código de um ministério em que já estou
    Então vejo a mensagem "Você já participa deste ministério"
