# language: pt
@perfil @tema
Funcionalidade: Aparência pelo perfil

  @CT-061
  Cenário: Selecionar tema escuro
    Dado que estou no modal "Aparência" com "Claro" selecionado
    Quando toco em "Escuro"
    Então o tema muda na hora
    E "Escuro" fica com o check de selecionado
    E a linha "Aparência" do perfil passa a mostrar "Escuro"

  @CT-062
  Cenário: Coerência com o atalho do cabeçalho
    Dado que mudei o tema pelo ícone de lua
    Quando abro "Aparência"
    Então a opção marcada é a mesma do tema atual
