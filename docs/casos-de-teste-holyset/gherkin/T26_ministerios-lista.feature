# language: pt
@ministerios
Funcionalidade: Lista e troca de ministérios

  Contexto:
    Quando abro "Ministérios"

  @CT-112
  Cenário: Listar ministérios
    Então vejo "Você participa de 5 · toque para trocar"
    E vejo Projeção, Iluminação, Som, Diaconia e Louvor
    E só "Louvor" tem o selo "Em uso"

  @CT-113 @smoke
  Cenário: Trocar o ministério em uso
    Quando toco em "Diaconia"
    Então "Diaconia" passa a ter o selo "Em uso"
    E a navegação inferior mostra "Checklist" no lugar de "Playlists"

  @CT-114
  Esquema do Cenário: Navegação inferior por tipo de ministério
    Quando troco para "<ministério>"
    Então a navegação inferior tem "<abas>"

    Exemplos:
      | ministério    | abas                                     |
      | Louvor   | Início, Escalas, Playlists, Ministérios  |
      | Diaconia | Início, Escalas, Checklist, Ministérios  |
      | Som           | Início, Escalas, Ministérios             |
      | Projeção      | Início, Escalas, Ministérios             |

  @CT-115
  Cenário: Indicador de pedidos pendentes para líder
    Dado que sou líder de "Projeção" com 1 pedido pendente
    Então o card mostra "1 pedido"
    E a aba aparece como "Equipe · 1"
