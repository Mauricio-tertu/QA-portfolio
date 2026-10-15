# language: pt
@perfil @notificacoes
Funcionalidade: Preferências de notificação

  Contexto:
    Dado que estou no Perfil
    Quando abro "Notificações"

  @CT-056
  Cenário: Status do push
    Então vejo "Notificações push · Ativas neste dispositivo · Ativo"

  @CT-057 @smoke
  Cenário: Desligar um tipo de alerta
    Quando desligo a chave "Repertório"
    E toco em "Salvar"
    Então não recebo push quando uma playlist for criada ou alterada

  @CT-058
  Cenário: Recurso futuro bloqueado
    Então "Trocas de escala" mostra a etiqueta "EM BREVE"
    E a chave está desabilitada

  @CT-059
  Cenário: Cancelar não salva
    Quando altero qualquer chave
    E toco em "Cancelar"
    Então as preferências anteriores continuam valendo

  @CT-060
  Cenário: Permissão de push negada no navegador
    Dado que o navegador bloqueou notificações
    Então o status mostra "Inativo" com instrução para reativar
