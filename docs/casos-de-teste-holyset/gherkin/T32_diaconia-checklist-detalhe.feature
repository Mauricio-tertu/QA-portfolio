# language: pt
@diaconia @checklist
Funcionalidade: Checklist do culto

  Contexto:
    Dado que abri o checklist de "Culto 17"

  @CT-135
  Cenário: Cabeçalho
    Então vejo "Sábado, 17 de outubro", o responsável "Responsável X"
    E "0 de 16 tarefas feitas" com 0%

  @CT-136 @permissao
  Cenário: Usuário não escalado só visualiza
    Dado que não estou escalado neste culto
    Então vejo "Você não está escalado neste culto: o checklist fica só para visualização."
    E checkboxes e o contador de pessoas estão desabilitados
    E eles têm aparência visual de desabilitados

  @CT-137 @smoke
  Cenário: Marcar tarefa como feita
    Dado que estou escalado neste culto
    Quando marco "Banheiros" como feita
    Então o progresso vai para "1 de 16" (6%)
    E "Pré-culto" mostra "1 de 4"

  @CT-138
  Cenário: Contador de pessoas
    Dado que estou escalado
    Quando toco em "Aumentar" 3 vezes e "Diminuir" 1 vez
    Então "Pessoas no culto" mostra 2
    E "Diminuir" fica desabilitado em 0

  @CT-139
  Cenário: Seções
    Então vejo "Pré-culto 0 de 4", "Durante o culto 0 de 7" e "Pós-culto 0 de 5"
