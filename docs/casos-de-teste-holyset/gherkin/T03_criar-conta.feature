# language: pt
@autenticacao @cadastro
Funcionalidade: Criação de conta

  Contexto:
    Dado que estou na tela "Crie sua conta"

  @CT-011 @smoke
  Cenário: Cadastro com dados válidos
    Quando preencho "Seu nome" com "Maria"
    E preencho "E-mail" com um e-mail ainda não cadastrado
    E preencho "Crie uma senha" com "abc123"
    E toco em "Criar conta"
    Então minha conta é criada
    E sou orientado a entrar em um ministério

  @CT-012
  Cenário: Indicador de requisito de senha
    Quando digito "abc12" no campo de senha
    Então o indicador "Pelo menos 6 caracteres" fica pendente
    Quando digito "abc123"
    Então o indicador "Pelo menos 6 caracteres" fica atendido

  @CT-013 @negativo
  Esquema do Cenário: Validações do formulário
    Quando preencho nome "<nome>", e-mail "<email>" e senha "<senha>"
    E toco em "Criar conta"
    Então vejo o erro "<erro>"

    Exemplos:
      | nome  | email               | senha  | erro                         |
      |       | novo@teste.com      | abc123 | nome obrigatório             |
      | Maria | email-invalido      | abc123 | e-mail inválido              |
      | Maria | novo@teste.com      | abc    | senha com menos de 6 caract. |
      | Maria | (e-mail já em uso)  | abc123 | e-mail já cadastrado         |

  @CT-014
  Cenário: Voltar para o login
    Quando toco em "Entrar" no rodapé
    Então volto para a tela de login

  @CT-015 @ux
  Cenário: E-mail preenchido é reaproveitado
    Dado que digitei um e-mail na tela de login
    Quando abro "Criar conta"
    Então o campo "E-mail" já vem preenchido com o mesmo valor
