# Maurício Tertuliano — QA Tester (testes manuais e funcionais)

![Playwright Tests](https://github.com/Mauricio-tertu/playwright-ts-portfolio/actions/workflows/playwright.yml/badge.svg)
![Jira](https://img.shields.io/badge/Jira-0052CC?logo=jira&logoColor=white)
![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?logo=typescript&logoColor=white)
![License](https://img.shields.io/badge/license-ISC-blue)

> QA responsável por um sistema real em produção (HOLYSET). Testo, documento e reporto defeitos no Jira, com atenção ao detalhe e foco no que o utilizador realmente vai usar.

Procuro a causa dos problemas, não só o sintoma: testo do caso simples ao extremo, confirmo cada defeito por reprodução antes de o reportar e levo as dúvidas de regra de negócio ao Product Owner em vez de encher o backlog de ruído. A automação com Playwright é um complemento ao trabalho manual, não o ponto de partida.

**Estou à procura da minha primeira oportunidade como QA Tester em Portugal** (Lisboa, Porto ou remoto). Contacto: [LinkedIn](https://www.linkedin.com/in/maur%C3%ADcio-tert%C3%BAliano-3b916a20b/)

---

## 🏢 Projeto HOLYSET: experiência real de QA

Sou o **único QA** do HOLYSET, um sistema em produção usado por igrejas para gerir cultos, escalas e repertório musical ([holy-set.vercel.app](https://holy-set.vercel.app)). Trabalho com o responsável do projeto e um programador, num fluxo de Scrum com board no Jira.

### Números do trabalho até agora

| Métrica | Valor |
|---|---|
| Sessões de teste documentadas | 15 |
| Defeitos identificados e acompanhados no Jira | 20+ (SCRUM-11 a SCRUM-47) |
| Módulos com CRUD validado de ponta a ponta | 4 (Escalas, Playlists, Biblioteca de Louvores, Cultos) |
| Falha sistémica isolada por análise de causa raiz | 1 (RLS mal configurado) |
| Casos de teste manuais formais do HOLYSET (login) | 2 executados, 3 planeados |
| Abordagem | Mobile-first (viewport ~400 px), Chrome DevTools, rede 4G lenta |

### Como trabalho

- **Procuro a causa, não só o sintoma.** Vários erros 403 apareciam em ecrãs diferentes. Em vez de abrir um ticket por ecrã, testei áreas que não deviam falhar e percebi que a origem era a mesma: uma política de RLS mal configurada no Supabase. A equipa corrigiu o problema na origem.
- **Reporto o que é bug e pergunto o que não tenho certeza.** O sistema aceitava vários Diretores Musicais no mesmo culto, o que violava uma regra, por isso abri bug. Quando a regra não estava clara, levei-a ao Product Owner.
- **Vejo padrões, não bugs soltos.** Faltava validação em campos de Culto e Playlist. Testei do caso simples ao extremo (vazio, só espaços, datas em 2119) e reportei como problema de estrutura.
- **Segurança básica.** Testei XSS nos campos de nome (o texto foi tratado como texto, sem executar nada).
- **Smoke test depois de cada deploy.** No primeiro deploy para o Vercel (06/10) vi erros 404, 500 e 406 e relacionei-os com uma base de dados desalinhada, o que o responsável do projeto confirmou. Não fiz os retestes antigos antes da correção, porque o resultado não seria válido. Repeti no dia seguinte e passou.
- **Testabilidade.** Reparei que a aplicação não tem `id`/`data-testid` nos elementos, o que dificulta a automação e a acessibilidade, e levei o assunto como dívida técnica.

### Evidências documentadas

- 🐞 [Exemplos de bug reports](docs/exemplos-de-bug-reports.md): três defeitos reais, do achado ao reteste
- 📄 [Relatórios de sessão completos](docs/relatorios-holyset/): 15 sessões de teste exploratório, do achado ao ticket
- ✅ [Casos de teste manuais do HOLYSET (login)](docs/casos-de-teste-holyset/casos-de-teste-login.md): passos, resultado esperado e obtido, estado
- 📋 [Plano de teste formal](docs/plano-de-teste/plano-de-teste-holyset.md): âmbito, tipos de teste, riscos e matriz de rastreabilidade
- 🧪 [Casos de teste manuais do site de prática](docs/casos-de-teste-manuais.md) e [cenários em Gherkin](docs/casos-de-teste.md)
- 🔌 [Testes de API com Postman](docs/testes-api-postman.md)

---

## 🛠️ Competências

**Testes manuais e processo (foco principal)**
- Testes exploratórios e funcionais, regressão e smoke test depois de deploys
- Casos de teste formais, plano de teste, cenários em Gherkin
- Reporte e triagem de defeitos no Jira (Scrum, board SCRUM)
- Chrome DevTools: separador Rede, Consola, emulação mobile e limitação de rede
- Testes de API com Postman (GET, POST, PUT, DELETE) e validação de dados com SQL
- Git e GitHub

**Automação (complemento)**
- Playwright + TypeScript, Page Object Model, execução em Chromium, Firefox e WebKit
- GitHub Actions (CI) a cada push

---

## 🇬🇧 In English

I'm a QA Tester based in Braga, Portugal, looking for my first role in software testing. I am the only QA on HOLYSET, a church ministry management app used in production: I run exploratory and regression tests, write test cases and a test plan, and report defects in Jira (20+ tickets, SCRUM-11 to SCRUM-47). I test mobile-first with Chrome DevTools and I use Postman and SQL for API and data checks. I also have a Playwright + TypeScript automation project with CI on GitHub Actions. I'm improving my English every day and I am open to working in English teams.

---

## 🤖 Automação com Playwright

**36 execuções por ronda local completa** (12 cenários × 3 navegadores: Chromium, Firefox e WebKit)

- **Login** (`tests/login.spec.ts`): credenciais válidas, palavra-passe inválida, campos vazios
- **Logout** (`tests/logout.spec.ts`): fluxo completo de login → logout → validação do regresso
- **API** (`tests/api.spec.ts`): GET, POST, PUT, DELETE e rota inexistente (404)
- **API real do HOLYSET** (`tests/holyset-supabase.spec.ts`): validação da API REST do Supabase no ambiente de desenvolvimento, incluindo um teste de segurança negativo (bloqueio de acesso sem autenticação)

> No CI público (badge acima) essa última suíte aparece como *skipped*, não como falha: depende de credenciais que não são versionadas por segurança. Localmente, com o `.env` preenchido (ver `.env.example`), corre contra o ambiente dev do HOLYSET. Na última execução local (21/09/2026), o teste de bloqueio sem autenticação (401) passou; o teste de leitura com apikey válida devolveu 401 inesperado e está em investigação.

Os testes estão organizados por tags: `@smoke` (caminhos vitais, cerca de 1 minuto) e `@regression` (suíte completa).

```bash
npx playwright test --grep @smoke       # só os vitais
npx playwright test --grep @regression  # regressão completa
```

**Arquitetura:** Page Object Model (`pages/loginPage.ts`, `pages/securePage.ts`, `pages/loginPage.holyset.ts`), retries e timeouts configurados, e CI com GitHub Actions que guarda o relatório HTML como artefacto.

## 🚀 Como correr os testes

```bash
git clone https://github.com/Mauricio-tertu/playwright-ts-portfolio.git
cd playwright-ts-portfolio
npm install
npm test
```

(Opcional) Para correr a suíte real do Supabase, copie `.env.example` para `.env` e preencha com credenciais válidas. Sem isso, essa suíte é ignorada automaticamente.

```bash
npm run test:smoke       # só smoke
npm run test:regression  # só regressão
npm run report           # relatório HTML
```

## 📁 Estrutura do projeto

```
├── docs/
│   ├── exemplos-de-bug-reports.md  # Bug reports reais do HOLYSET
│   ├── plano-de-teste/             # Plano de teste formal do HOLYSET
│   ├── relatorios-holyset/         # Relatórios de sessão de teste exploratório
│   ├── casos-de-teste-holyset/     # Casos de teste manuais do HOLYSET
│   ├── casos-de-teste-manuais.md   # Casos do site de prática
│   └── testes-api-postman.md
├── pages/                          # Page Object Model
├── tests/                          # Specs Playwright
└── playwright.config.ts
```

## 🔜 Próximos passos

**Testes manuais (prioridade)**
- [x] Plano de teste formal do HOLYSET
- [x] Primeiros casos de teste manuais formais do HOLYSET (login: palavra-passe incorreta e campos vazios)
- [ ] Executar os casos de login restantes (TC-LOGIN-01, 04 e 05)
- [ ] Escrever casos de teste formais para os restantes módulos do HOLYSET (Escalas, Playlists, Biblioteca, Cultos)
- [ ] Retestes dos tickets em revisão e exploratório no módulo Ministérios (adiados por causa da base de dados desalinhada em 06/10)
- [ ] Formalizar em Gherkin os fluxos críticos já testados de forma exploratória
- [ ] Certificação ISTQB Foundation

**Automação (complemento)**
- [x] Suíte de testes de API para o HOLYSET (Supabase)
- [ ] Investigar o 401 inesperado no teste de leitura com apikey válida (ambiente dev)
- [ ] Specs E2E de login/logout do HOLYSET (o POM já existe em `pages/loginPage.holyset.ts`)
- [ ] Smoke e regressão específicos do HOLYSET (hoje as tags só cobrem o site de prática e a API)
- [ ] Auditoria básica de acessibilidade (axe-core)

## 👤 Autor

**Maurício Tertuliano**, QA Tester em transição de carreira (indústria → tecnologia) | Braga, Portugal
[LinkedIn](https://www.linkedin.com/in/maur%C3%ADcio-tert%C3%BAliano-3b916a20b/)
