# language: pt
@tema
Funcionalidade: Alternar tema claro/escuro

  @CT-033 @smoke
  Cenário: Ativar o modo escuro pelo atalho do cabeçalho
    Dado que o tema atual é "Claro"
    Quando toco em "Mudar para o modo escuro"
    Então a interface passa a usar o tema escuro
    E o ícone muda para sol com o rótulo "Mudar para o modo claro"

  @CT-034
  Cenário: Preferência persiste no dispositivo
    Dado que ativei o modo escuro
    Quando recarrego o app
    Então o tema escuro continua aplicado

  @CT-035 @visual
  Esquema do Cenário: Legibilidade no modo escuro
    Dado que o modo escuro está ativo
    Quando abro a tela "<tela>"
    Então textos, badges e ícones mantêm contraste mínimo AA (4,5:1)

    Exemplos:
      | tela        |
      | Início      |
      | Escalas     |
      | Biblioteca  |
      | Ministérios |
      | Perfil      |
