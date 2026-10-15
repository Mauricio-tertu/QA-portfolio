# language: pt
@projecao @checklist
Funcionalidade: Checklists do ministério (líder)

  @CT-152 @permissao
  Cenário: Líder vê ação de criação
    Dado que sou líder de "Projeção"
    Quando abro "Checklists"
    Então vejo o botão "Novo Checklist"

  @CT-153 @navegacao
  Cenário: Trocar de ministério volta para o Início
    Dado que estou em "Checklists" do "Som"
    Quando troco o ministério para "Projeção"
    Então sou levado ao "Início" da Projeção
