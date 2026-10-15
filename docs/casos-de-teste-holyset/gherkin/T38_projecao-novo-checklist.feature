# language: pt
@projecao @checklist @criacao
Funcionalidade: Criar checklist

  Contexto:
    Dado que sou líder de "Projeção"
    Quando toco em "Novo Checklist"

  @CT-154 @smoke
  Cenário: Criar checklist válido
    Quando preencho "Nome do checklist" com "Culto de Domingo"
    E escolho a data "18/10/2026"
    E toco em "Salvar"
    Então o checklist aparece na lista e o contador vira "CHECKLISTS (1)"

  @CT-155 @negativo
  Cenário: Campos obrigatórios
    Quando toco em "Salvar" com os campos vazios
    Então o checklist não é criado e vejo os erros dos campos

  @CT-156
  Cenário: Cancelar
    Quando toco em "Cancelar"
    Então nada é criado
