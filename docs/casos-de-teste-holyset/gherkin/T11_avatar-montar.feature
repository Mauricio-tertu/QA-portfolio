# language: pt
@perfil @avatar @editor
Funcionalidade: Montar avatar personalizado

  Contexto:
    Dado que estou na tela "Montar avatar"

  @CT-049
  Esquema do Cenário: Trocar item de uma categoria
    Quando abro a aba "<aba>"
    E seleciono uma opção diferente
    Então a pré-visualização é atualizada na hora
    E a opção escolhida fica com contorno de selecionada

    Exemplos:
      | aba     |
      | Corpo   |
      | Rosto   |
      | Cabelo  |
      | Óculos  |
      | Chapéu  |
      | Enfeite |

  @CT-050
  Cenário: Trocar cores
    Quando escolho uma "Cor do corpo", uma "Cor do cabelo" e uma "Cor de fundo"
    Então a pré-visualização reflete as três cores

  @CT-051 @visual
  Cenário: Camadas do avatar
    Dado que tenho um cabelo com topete selecionado
    Quando escolho um chapéu (gorro, boné, coroa ou chapéu de bruxa)
    Então o chapéu fica por cima do cabelo, sem o cabelo atravessar

  @CT-052
  Cenário: Sortear
    Quando toco em "Sortear"
    Então uma combinação aleatória é aplicada

  @CT-053
  Cenário: Salvar avatar montado
    Quando toco em "Salvar"
    Então volto ao perfil com o novo avatar

  @CT-054
  Cenário: Sair sem salvar
    Quando toco em "Voltar sem salvar"
    Então o avatar anterior é mantido

  @CT-055 @ux
  Cenário: Abas roláveis horizontalmente em telas estreitas
    Dado que a tela tem 360 px de largura
    Então consigo rolar as abas até "Enfeite"
