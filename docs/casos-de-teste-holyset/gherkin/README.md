# Cenários Gherkin do HOLYSET

Cenários BDD de **todas as telas** do HOLYSET, escritos depois da grande atualização da interface (outubro de 2026).

- **46 ficheiros `.feature`**, um por tela, com **187 cenários** (`@CT-001` a `@CT-187`)
- Escritos em português (`# language: pt`) e validados com o parser oficial [`@cucumber/gherkin`](https://github.com/cucumber/gherkin)
- Base: sessão exploratória de 15/10/2026 em viewport mobile, com perfis de membro e de líder
- Os nomes de pessoas, ministérios e cultos foram anonimizados

## Tags

| Tag | Uso |
|---|---|
| `@smoke` | Caminho feliz da funcionalidade, candidato à automação com Playwright |
| `@negativo` | Validações e entradas inválidas |
| `@permissao` | Diferenças entre membro e líder |
| `@destrutivo` | Ações irreversíveis (executar só em ambiente de teste) |
| `@acessibilidade`, `@visual`, `@ux` | Leitor de ecrã, contraste e layout |
| `@seguranca`, `@privacidade` | Exposição de dados, convites e recuperação de palavra-passe |
| `@regressao`, `@dados`, `@navegacao` | Consistência de dados e de navegação entre telas |

## Índice

| # | Tela | Cenários | IDs |
|---|---|---|---|
| **Autenticação** | | | |
| T01 | [Login](T01_login.feature) | 5 | CT-001 a CT-005 |
| T02 | [Esqueci a senha](T02_esqueci-senha.feature) | 5 | CT-006 a CT-010 |
| T03 | [Criar conta](T03_criar-conta.feature) | 5 | CT-011 a CT-015 |
| **Início e Agenda** | | | |
| T04 | [Início (Louvor)](T04_inicio.feature) | 6 | CT-016 a CT-021 |
| T05 | [Central de notificações](T05_notificacoes.feature) | 5 | CT-022 a CT-026 |
| T06 | [Calendário (Ver tudo)](T06_agenda-calendario.feature) | 6 | CT-027 a CT-032 |
| T07 | [Tema escuro](T07_modo-escuro.feature) | 3 | CT-033 a CT-035 |
| **Perfil e Configurações** | | | |
| T08 | [Perfil](T08_perfil.feature) | 5 | CT-036 a CT-040 |
| T09 | [Editar dados](T09_perfil-editar-dados.feature) | 4 | CT-041 a CT-044 |
| T10 | [Escolher avatar](T10_avatar-escolher.feature) | 4 | CT-045 a CT-048 |
| T11 | [Montar avatar](T11_avatar-montar.feature) | 7 | CT-049 a CT-055 |
| T12 | [Preferências de notificação](T12_perfil-notificacoes.feature) | 5 | CT-056 a CT-060 |
| T13 | [Aparência](T13_perfil-aparencia.feature) | 2 | CT-061 a CT-062 |
| T14 | [Segurança](T14_perfil-seguranca.feature) | 2 | CT-063 a CT-064 |
| T15 | [Preferências (funções e ministério padrão)](T15_perfil-preferencias.feature) | 3 | CT-065 a CT-067 |
| **Escalas** | | | |
| T16 | [Escalas — Minha agenda](T16_escalas-minha-agenda.feature) | 3 | CT-068 a CT-070 |
| T17 | [Escalas — Por ministério](T17_escalas-por-ministerio.feature) | 6 | CT-071 a CT-076 |
| T18 | [Detalhe da escala](T18_escala-detalhe.feature) | 5 | CT-077 a CT-081 |
| **Playlists e Biblioteca** | | | |
| T19 | [Playlists](T19_playlists-lista.feature) | 4 | CT-082 a CT-085 |
| T20 | [Detalhe da playlist (Ordem do culto)](T20_playlist-detalhe.feature) | 5 | CT-086 a CT-090 |
| T21 | [Biblioteca — Músicas](T21_biblioteca-musicas.feature) | 5 | CT-091 a CT-095 |
| T22 | [Biblioteca — Busca](T22_biblioteca-busca.feature) | 5 | CT-096 a CT-100 |
| T23 | [Biblioteca — Filtro por categoria](T23_biblioteca-filtro.feature) | 6 | CT-101 a CT-106 |
| T24 | [Biblioteca — Pastas](T24_biblioteca-pastas.feature) | 2 | CT-107 a CT-108 |
| T25 | [Detalhe da pasta](T25_pasta-detalhe.feature) | 3 | CT-109 a CT-111 |
| **Ministérios e Equipe (visão de membro)** | | | |
| T26 | [Ministérios](T26_ministerios-lista.feature) | 4 | CT-112 a CT-115 |
| T27 | [Entrar com código](T27_entrar-com-codigo.feature) | 6 | CT-116 a CT-121 |
| T28 | [Equipe (membro — Louvor)](T28_ministerios-equipe.feature) | 5 | CT-122 a CT-126 |
| **Diaconia** | | | |
| T29 | [Início (Diaconia)](T29_diaconia-inicio.feature) | 3 | CT-127 a CT-129 |
| T30 | [Checklist — Visitantes](T30_diaconia-visitantes.feature) | 2 | CT-130 a CT-131 |
| T31 | [Checklist — Cultos](T31_diaconia-checklist-cultos.feature) | 3 | CT-132 a CT-134 |
| T32 | [Checklist do culto](T32_diaconia-checklist-detalhe.feature) | 5 | CT-135 a CT-139 |
| T33 | [Checklist — Tarefa e filtro](T33_diaconia-checklist-tarefa.feature) | 4 | CT-140 a CT-143 |
| T34 | [Escalas da Diaconia](T34_diaconia-escalas.feature) | 3 | CT-144 a CT-146 |
| **Som, Iluminação e Projeção (visão de líder)** | | | |
| T35 | [Som — Escalas e Início](T35_som-escalas-inicio.feature) | 3 | CT-147 a CT-149 |
| T36 | [Som — Checklists](T36_som-checklists.feature) | 2 | CT-150 a CT-151 |
| T37 | [Projeção — Checklists (líder)](T37_projecao-checklists.feature) | 2 | CT-152 a CT-153 |
| T38 | [Novo checklist](T38_projecao-novo-checklist.feature) | 3 | CT-154 a CT-156 |
| T39 | [Projeção — Escalas (líder, vazio)](T39_projecao-escalas.feature) | 2 | CT-157 a CT-158 |
| T40 | [Agendar novo culto](T40_projecao-novo-culto.feature) | 3 | CT-159 a CT-161 |
| T41 | [Ministérios (líder com pedido)](T41_projecao-ministerios-lider.feature) | 2 | CT-162 a CT-163 |
| T42 | [Projeção — Equipe (líder)](T42_projecao-equipe-lider.feature) | 4 | CT-164 a CT-167 |
| T43 | [Menu do integrante](T43_projecao-equipe-menu.feature) | 5 | CT-168 a CT-172 |
| T44 | [Pedidos de entrada](T44_projecao-pedidos.feature) | 4 | CT-173 a CT-176 |
| T45 | [Adicionar pessoas](T45_projecao-adicionar-pessoas.feature) | 8 | CT-177 a CT-184 |
| T46 | [Iluminação — Início e Equipe](T46_iluminacao-inicio-equipe.feature) | 3 | CT-185 a CT-187 |
