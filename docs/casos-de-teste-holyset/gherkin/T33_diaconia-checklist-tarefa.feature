# language: pt
@diaconia @checklist
Funcionalidade: Detalhe da tarefa e filtro

  @CT-140
  Cenário: Expandir tarefa
    Quando toco em "Banheiros"
    Então vejo "O que fazer" com os passos
    E "Quem faz" com "Ninguém atribuído ainda."

  @CT-141
  Cenário: Só as minhas sem tarefas
    Quando toco em "Só as minhas"
    Então vejo "Nenhuma tarefa atribuída a você neste culto."

  @CT-142
  Cenário: Só as minhas com tarefas
    Dado que "Água" está atribuída a mim
    Quando toco em "Só as minhas"
    Então vejo apenas "Água"

  @CT-143 @conteudo
  Cenário: Idioma consistente
    Então os textos usam uma única variante do português
