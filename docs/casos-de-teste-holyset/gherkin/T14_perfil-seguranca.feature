# language: pt
@perfil @seguranca
Funcionalidade: Trocar senha

  @CT-063
  Cenário: Enviar link de redefinição
    Dado que estou no modal "Segurança"
    Então vejo o e-mail da conta no texto explicativo
    Quando toco em "Enviar link"
    Então vejo confirmação de envio
    E recebo o e-mail com o link de redefinição

  @CT-064
  Cenário: Fechar sem enviar
    Quando toco em "Fechar"
    Então nenhum e-mail é enviado
