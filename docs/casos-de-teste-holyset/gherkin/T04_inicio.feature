# language: pt
@inicio
Funcionalidade: Tela inicial

  Contexto:
    Dado que estou logado e o ministério em uso é "Louvor"
    E estou na tela "Início"

  @CT-016 @smoke
  Cenário: Exibir saudação e data atual
    Então vejo "Olá, <primeiro nome>"
    E vejo a data de hoje por extenso, ex.: "Quinta, 15 de outubro"
    E o dia de hoje aparece destacado como "Hoje" na faixa da semana

  @CT-017
  Cenário: Sem escalas futuras
    Dado que não estou escalado em nenhum culto futuro
    Então vejo o card "Nenhuma escala à frente"

  @CT-018
  Cenário: Próxima escala do usuário
    Dado que estou escalado em um culto futuro
    Então o card mostra a data, o nome do culto e minha função

  @CT-019
  Esquema do Cenário: Atalhos do ministério em uso
    Quando toco em "<atalho>"
    Então sou levado para "<destino>"

    Exemplos:
      | atalho            | destino                                  |
      | Escalas da equipe | Escalas > Por ministério                 |
      | Equipe            | Ministérios > Equipe                     |
      | Meu perfil        | Perfil                                   |
      | Trocar            | Ministérios (lista para trocar)          |
      | Ver tudo          | Calendário do mês                        |

  @CT-020
  Cenário: Tocar em um dia da semana abre o calendário
    Quando toco no dia "Sáb 17"
    Então o calendário abre com o dia 17 selecionado

  @CT-021
  Cenário: Puxar para atualizar
    Quando arrasto a tela para baixo no topo
    Então vejo "Puxe para atualizar" e os dados são recarregados
