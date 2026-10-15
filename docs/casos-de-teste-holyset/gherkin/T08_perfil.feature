# language: pt
@perfil
Funcionalidade: Visualizar perfil

  Contexto:
    Dado que estou logado
    Quando abro "Meu perfil"

  @CT-036
  Cenário: Dados pessoais
    Então vejo meu nome, "Membro desde 2026", e-mail, celular e data de nascimento

  @CT-037 @regressao
  Cenário: Estatísticas coerentes com os ministérios
    Dado que participo de 5 ministérios e sou líder em "Projeção"
    Então "ministérios ativos" deve mostrar 5
    E o chip de função não deve ser "Sem função definida"

  @CT-038
  Esquema do Cenário: Abrir configurações
    Quando toco em "<opção>"
    Então abre o modal "<modal>"

    Exemplos:
      | opção        | modal          |
      | Notificações | NOTIFICAÇÕES   |
      | Aparência    | APARÊNCIA      |
      | Segurança    | SEGURANÇA      |
      | Preferências | PREFERÊNCIAS   |

  @CT-039 @destrutivo
  Cenário: Sair da conta
    Quando toco em "Sair da conta"
    Então devo ver uma confirmação
    Quando confirmo
    Então volto para a tela de login e a sessão é encerrada

  @CT-040
  Cenário: Voltar
    Quando toco em "Voltar"
    Então retorno à tela anterior
