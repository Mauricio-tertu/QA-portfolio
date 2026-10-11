# Exemplos de bug reports — HOLYSET

Três defeitos reais encontrados no HOLYSET (sistema de gestão de ministério de igreja, em produção), escritos no formato que uso no Jira. Os detalhes vêm dos relatórios de sessão em [`relatorios-holyset/`](relatorios-holyset/). Ambiente: dev, Chrome DevTools, viewport mobile (~400 px).

---

## SCRUM-15 — Admin não consegue guardar o próprio nome (erro 403)

| Campo | Valor |
|---|---|
| **Módulo** | Equipa / Perfil |
| **Severidade** | Alta |
| **Estado final** | Concluído (reteste em 24/09/2026) |

**Resultado obtido:** ao editar o próprio nome, mesmo com perfil de administrador, a operação falha com erro 403 (permission denied).

**Resultado esperado:** o administrador consegue editar e guardar o próprio nome.

**Análise:** o mesmo erro 403 aparecia noutras ecrãs (por exemplo, remover membro, SCRUM-16). Em vez de abrir um ticket por ecrã, testei áreas que não deviam falhar e cheguei à origem comum: uma política de RLS (Row Level Security) mal configurada no Supabase. A equipa corrigiu o problema na origem.

**Reteste:** nome editado duas vezes com valores diferentes, resposta 200 do Supabase, persistência confirmada após F5 e após logout/login.

---

## SCRUM-30 — O sistema permite vários Diretores Musicais no mesmo culto

| Campo | Valor |
|---|---|
| **Módulo** | Escalas / Cultos |
| **Tipo** | Regra de negócio |
| **Estado final** | Concluído (reteste em 25/09/2026) |

**Resultado obtido:** num culto com três integrantes escalados, os três ficaram marcados como Diretor Musical ao mesmo tempo, sem qualquer bloqueio.

**Resultado esperado:** só pode existir um Diretor Musical por culto.

**Impacto:** cria ambiguidade sobre quem é o responsável pelo culto, o que afeta a operação real do ministério.

**Como decidi reportar:** a regra do negócio estava clara (um DM por culto), por isso abri bug. Quando uma regra não está clara, levo a questão ao Product Owner em vez de encher o backlog de ruído.

**Reteste:** com um DM já definido, a opção passa a aparecer como "Já definido" e fica desativada para os restantes integrantes.

---

## SCRUM-26 — Remover um louvor da playlist não pede confirmação

| Campo | Valor |
|---|---|
| **Módulo** | Playlists |
| **Tipo** | Usabilidade / ação destrutiva |
| **Estado final** | Concluído (reteste em 25/09/2026) |

**Resultado obtido:** ao remover um louvor de uma playlist, a ação acontece logo ao toque, sem pedido de confirmação.

**Resultado esperado:** pedido de confirmação antes de uma ação destrutiva.

**Observação:** na Biblioteca de Louvores, a exclusão já pedia confirmação. O padrão de confirmação era inconsistente entre módulos.
