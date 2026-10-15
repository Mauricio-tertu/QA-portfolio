# language: pt
@perfil @preferencias
Funcionalidade: Preferências do integrante

  Contexto:
    Dado que estou no Perfil
    Quando abro "Preferências"

  @CT-065
  Cenário: Definir funções preferidas
    Quando toco em "Editar" em "Instrumentos / funções preferidos"
    E marco "Violão" e "Vocal"
    E toco em "Salvar"
    Então o perfil mostra "Violão · Vocal"
    E na escala o dropdown de instrumento só oferece essas opções

  @CT-066
  Cenário: Sem funções marcadas
    Dado que nenhuma função está marcada
    Então vejo "Sem funções marcadas — todas as opções ficam disponíveis na escala."

  @CT-067
  Esquema do Cenário: Ministério padrão ao abrir o app
    Quando seleciono "<opção>" em "Ministério padrão ao abrir o app"
    E toco em "Salvar"
    E reabro o app
    Então o ministério em uso é "<resultado>"

    Exemplos:
      | opção           | resultado                   |
      | Último utilizado| o último ministério aberto  |
      | Diaconia   | Diaconia               |
      | Louvor     | Louvor                 |
