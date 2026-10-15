# language: pt
@perfil @avatar
Funcionalidade: Escolher avatar pronto

  Contexto:
    Dado que estou no Perfil
    Quando toco em "Editar avatar"

  @CT-045
  Cenário: Avatar atual vem marcado
    Então o avatar que uso hoje aparece selecionado na grade

  @CT-046 @smoke
  Cenário: Trocar de avatar
    Quando seleciono "Gatinho"
    Então o botão "Usar este avatar" fica habilitado
    Quando toco em "Usar este avatar"
    Então meu avatar é atualizado no perfil, na equipe e nas escalas

  @CT-047
  Cenário: Botão desabilitado sem seleção
    Então "Usar este avatar" fica desabilitado enquanto nenhum avatar novo é escolhido

  @CT-048
  Cenário: Ir para o editor
    Quando toco em "Montar o meu"
    Então abre a tela "Montar avatar"
