# language: pt
@autenticacao @recuperacao-senha
Funcionalidade: Recuperação de senha pelo login

  @CT-006
  Cenário: Solicitar link com e-mail preenchido
    Dado que preenchi o campo "E-mail" com um e-mail válido
    Quando toco em "Esqueci a senha"
    Então o botão mostra o estado "Enviando…"
    E vejo a mensagem "Se este e-mail tiver conta, enviamos um link para você criar uma nova senha."

  @CT-007 @seguranca
  Cenário: Mensagem não revela se o e-mail existe
    Dado que preenchi o campo "E-mail" com um e-mail não cadastrado
    Quando toco em "Esqueci a senha"
    Então vejo a mesma mensagem genérica exibida para e-mails cadastrados

  @CT-008 @negativo
  Cenário: Solicitar link com e-mail vazio
    Dado que o campo "E-mail" está vazio
    Quando toco em "Esqueci a senha"
    Então vejo um aviso pedindo para informar o e-mail
    E nenhum e-mail é enviado

  @CT-009 @ux
  Cenário: Confirmação antes de enviar o e-mail de redefinição
    Dado que preenchi o campo "E-mail"
    Quando toco em "Esqueci a senha"
    Então devo ver uma etapa de confirmação antes do envio

  @CT-010 @seguranca
  Cenário: Limite de solicitações (rate limit)
    Quando toco em "Esqueci a senha" 5 vezes seguidas
    Então o sistema limita novos envios por um período
