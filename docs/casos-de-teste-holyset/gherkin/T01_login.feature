# language: pt
@autenticacao @login
Funcionalidade: Login no HolySet
  Como integrante de um ministério
  Quero entrar com minha conta
  Para ver minhas escalas, tarefas e repertório

  Contexto:
    Dado que estou na tela "Que bom te ver de novo"

  @CT-001 @smoke
  Cenário: Login com credenciais válidas
    Quando preencho "E-mail" com um e-mail cadastrado
    E preencho "Senha" com a senha correta
    E toco em "Entrar"
    Então sou levado para a tela "Início"
    E vejo a saudação "Olá, <primeiro nome>"

  @CT-002 @negativo
  Esquema do Cenário: Login com dados inválidos
    Quando preencho "E-mail" com "<email>"
    E preencho "Senha" com "<senha>"
    E toco em "Entrar"
    Então permaneço na tela de login
    E vejo a mensagem de erro "<mensagem>"

    Exemplos:
      | email                | senha        | mensagem                       |
      | naoexiste@teste.com  | qualquer123  | credenciais inválidas          |
      | usuario@teste.com    | senhaErrada  | credenciais inválidas          |
      | email-invalido       | 123456       | e-mail em formato inválido     |
      |                      |              | campos obrigatórios            |

  @CT-003
  Cenário: Mostrar e ocultar a senha
    Dado que digitei uma senha
    Quando toco no ícone de olho do campo "Senha"
    Então a senha fica visível em texto
    Quando toco novamente no ícone
    Então a senha volta a ficar mascarada

  @CT-004
  Cenário: Entrar com Google
    Quando toco em "Continuar com Google"
    Então o fluxo OAuth do Google é aberto
    E após autorizar sou levado para a tela "Início"

  @CT-005
  Cenário: Navegar para criação de conta
    Quando toco em "Criar conta"
    Então vejo a tela "Crie sua conta"
