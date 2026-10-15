# language: pt
@perfil @edicao
Funcionalidade: Editar dados pessoais

  Contexto:
    Dado que estou no Perfil
    Quando toco em "Editar"

  @CT-041
  Cenário: Campos vêm preenchidos
    Então "Nome de exibição", "Celular" e "Data de nascimento" mostram os valores atuais
    E o DDI do celular é "PT +351"

  @CT-042 @smoke
  Cenário: Salvar alteração de nome
    Quando altero "Nome de exibição" para "Nome Sobrenome"
    E toco em "Salvar"
    Então o modal fecha
    E o perfil e a equipe mostram "Nome Sobrenome"

  @CT-043 @negativo
  Esquema do Cenário: Validações
    Quando preencho "<campo>" com "<valor>"
    E toco em "Salvar"
    Então vejo o erro "<erro>"

    Exemplos:
      | campo              | valor       | erro                    |
      | Nome de exibição   |             | nome obrigatório        |
      | Celular            | 12          | número inválido         |
      | Data de nascimento | 01/01/2030  | data no futuro inválida |

  @CT-044
  Cenário: Cancelar descarta alterações
    Quando altero o nome
    E toco em "Cancelar"
    Então o perfil continua com o nome original
