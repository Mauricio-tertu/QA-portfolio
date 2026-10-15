# language: pt
@projecao @equipe @convite
Funcionalidade: Adicionar pessoas ao ministério

  Contexto:
    Dado que sou líder de "Projeção"
    Quando toco em "Adicionar pessoas"

  @CT-177
  Cenário: Convite por código/QR
    Então vejo o QR code e o código de 8 caracteres
    E os botões "Copiar código", "Compartilhar" e "Copiar link"

  @CT-178
  Cenário: Copiar código
    Quando toco em "Copiar código"
    Então o código vai para a área de transferência e vejo "Copiado"

  @CT-179
  Cenário: Exigir aprovação
    Dado que "Aprovar quem entrar pelo convite" está ligado
    Quando alguém entra com o código
    Então vira um pedido em "Pedidos"

  @CT-180 @seguranca
  Cenário: Desativar convite
    Quando desligo "Convite ativo"
    Então quem usar o código vê "Código inválido ou desativado."

  @CT-181 @seguranca
  Cenário: Gerar novo código invalida o anterior
    Quando toco em "Gerar novo código"
    Então aparece um código novo
    E o código anterior deixa de funcionar

  @CT-182 @privacidade @critico
  Cenário: Busca de usuários sem expor a base inteira
    Quando abro a aba "Do HolySet"
    Então não vejo a lista de todos os usuários da plataforma
    E só encontro uma pessoa pelo e-mail exato (ou dentro da minha igreja)
    E os e-mails de terceiros não aparecem completos

  @CT-183
  Cenário: Adicionar usuário existente
    Quando busco e marco um usuário
    E escolho "Entram como: Membro"
    E toco em "Adicionar à equipe"
    Então ele aparece em "Integrantes"

  @CT-184
  Cenário: Botão desabilitado sem seleção
    Então "Adicionar à equipe" fica desabilitado até eu marcar alguém
