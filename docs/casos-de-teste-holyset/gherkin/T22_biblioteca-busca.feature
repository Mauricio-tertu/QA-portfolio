# language: pt
@biblioteca @busca
Funcionalidade: Buscar música

  Contexto:
    Dado que estou em "Biblioteca" > "Músicas"

  @CT-096 @smoke
  Cenário: Buscar por artista sem diferenciar maiúsculas
    Quando digito "fhop" na busca
    Então vejo "Doce Presença", "Meia noite", "Nada Mais" e "Sublime"

  @CT-097
  Cenário: Buscar por título parcial
    Quando digito "presen"
    Então vejo "Doce Presença", "Em Tua Presença" e "Jesus em Tua Presença"

  @CT-098
  Cenário: Busca ignorando acentos
    Quando digito "estacoes"
    Então vejo "Estações"

  @CT-099 @negativo
  Cenário: Sem resultados
    Quando digito "xyzabc"
    Então vejo "NENHUMA MÚSICA" e "Nenhum resultado para sua busca."

  @CT-100
  Cenário: Limpar busca
    Quando toco no "×" do campo
    Então a lista completa volta
