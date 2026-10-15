# language: pt
@biblioteca @pastas
Funcionalidade: Pastas da biblioteca

  @CT-107
  Cenário: Listar pastas
    Dado que estou em "Biblioteca" > "Pastas"
    Então vejo "2º semestre 2026" com "1 música"

  @CT-108
  Cenário: Abrir pasta
    Quando toco em "2º semestre 2026"
    Então vejo as músicas da pasta
