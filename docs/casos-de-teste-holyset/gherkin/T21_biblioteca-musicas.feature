# language: pt
@biblioteca
Funcionalidade: Biblioteca de músicas

  Contexto:
    Dado que abri "Playlists" > "Biblioteca" > "Músicas"

  @CT-091
  Cenário: Contagem
    Então vejo "20 louvores na biblioteca"
    E a lista tem 20 itens

  @CT-092
  Cenário: Informações do item
    Então cada música mostra título, tom, artista
    E a categoria e o marcador "VÍDEO" aparecem quando existirem

  @CT-093
  Cenário: Ordem alfabética
    Então as músicas estão em ordem alfabética pelo título

  @CT-094
  Cenário: Abrir vídeo
    Quando toco em "VÍDEO" de "Digno é o Senhor"
    Então o vídeo abre no YouTube

  @CT-095 @acessibilidade
  Cenário: Contraste dos badges de tom
    Então o badge de tom tem contraste mínimo de 4,5:1
