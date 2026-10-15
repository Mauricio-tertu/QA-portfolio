# language: pt
@ministerios @equipe
Funcionalidade: Equipe do ministério (visão de membro)

  Contexto:
    Dado que sou membro de "Louvor"
    Quando abro "Ministérios" > "Equipe"

  @CT-122
  Cenário: Seções e contagem
    Então vejo "Liderança · 2" e "Integrantes · 20"
    E a quantidade de nomes listados bate com as contagens

  @CT-123
  Cenário: Identificação do usuário
    Então meu nome aparece com "(você)"

  @CT-124 @dados
  Cenário: Funções coerentes com as escalas
    Dado que "Integrante B" toca guitarra nas escalas
    Então o card dele não mostra "Sem função definida"

  @CT-125 @permissao
  Cenário: Membro não gerencia equipe
    Então não vejo menus "⋮" nem "Adicionar pessoas"

  @CT-126 @privacidade
  Cenário: Nomes sem dados de e-mail
    Então nenhum integrante é exibido pelo prefixo do e-mail
