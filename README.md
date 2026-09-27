# 💥 thebigbang

> **The Big Bang Theory Engineering Squad for AI Coding Assistants.**  
> *You are the Tech Lead. This is your autonomous Caltech software department.*

`thebigbang` turns your AI assistant (Google Antigravity, Claude Code, Cursor, Windsurf, OpenCode) into a high-functioning engineering squad modeled after the iconic Big Bang Theory characters.

Instead of wrestling with brittle prompts, you direct a team of specialists where every member owns their domain, speaks in their character voice, and works together to build bulletproof software.

---

## ⚡ Quick Install (1 Line)

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/pyscriptcli/thebigbang/main/install.ps1 | iex
```

### macOS / Linux (Bash)
```bash
curl -fsSL https://raw.githubusercontent.com/pyscriptcli/thebigbang/main/install.sh | bash
```

*Auto-detects Antigravity (`~/.gemini/config/skills`), Claude Code (`~/.claude/skills`), or custom directories.*

---

## 🏛️ The Squad Architecture

```
                          ┌────────────────────────────────────────────────────────┐
                          │                    YOU: Tech Lead                      │
                          │        (Sets Objectives • Approves Architecture)       │
                          └───────────────────────────┬────────────────────────────┘
                                                      │
                                   [ /sheldon : Master Orchestrator ]
                                   Chief Architect & Team Dispatcher
                                   "Bazinga. Here is how we will build it."
                                                      │
   ┌──────────────────┬──────────────────┬────────────┼──────────────────┬──────────────────┬──────────────────┐
   ▼                  ▼                  ▼            ▼                  ▼                  ▼                  ▼
[/leonard-product] [/penny-frontend]  [/howard-backend][/raj-qa]      [/bernadette-security][/amy-devops]     [/squad]
  Leonard            Penny              Howard       Raj                Bernadette             Amy             Subagents
  Product & Specs    UI/UX & Layout     APIs & DB    TDD & Bug Medic    Zero-Trust SecOps      DevOps & SRE    Parallel Dispatch
```

---

## 🎭 The Roster & Dual Triggers

Every specialist responds to their **Character Name**, their **Compound Name** (easy to remember), or their **Functional Title**:

| Colleague | Quick Call | Compound Call | Functional Title | What They Own & Enforce |
| :--- | :--- | :--- | :--- | :--- |
| **Dr. Sheldon Cooper** | **`/sheldon`** | **`/sheldon-orchestrator`** | **`/architect`** | **Master Orchestrator & Chief Architect.** When in doubt, call Sheldon. Analyzes goals, maps state machines in `CONTEXT.md`, runs Socratic decision trees (`/grill`), and delegates tasks. |
| **Dr. Leonard Hofstadter** | **`/leonard`** | **`/leonard-product`** | **`/product`** | **Senior Product Manager.** Bridges business desires into `/btt` specs, cuts scope creep (`/advise`), isolates "no-gos & rabbit holes", and writes Gherkin acceptance criteria. |
| **Penny** | **`/penny`** | **`/penny-frontend`** | **`/frontend`** | **Senior UI/UX Architect.** Translates backend models into human interfaces. Enforces layout immunity (zero overlapping elements), the 5 UI states, 4/8px design tokens, and anti-AI-slop. |
| **Howard Wolowitz** | **`/howard`** | **`/howard-backend`** | **`/backend` / `/db`** | **Senior Backend Engineer & DBA.** MIT engineer who builds high-concurrency APIs, atomic transactions, idempotency, foreign key indexes, and zero-downtime expand/contract migrations. |
| **Dr. Rajesh Koothrappali** | **`/raj`** | **`/raj-qa`** | **`/qa`** | **Senior QA & Bug Medic.** Observational perfectionist. Writes seam-based TDD tests (`/tdd`), mandates proof-first reproduction scripts (`/diagnose`), and prunes AI bloat (`/simplify`). |
| **Dr. Bernadette Rostenkowski** | **`/bernadette`** | **`/bernadette-security`** | **`/security`** | **CISO & SecOps Lead.** Sweet on the outside, lethal on security. Enforces Zero-Trust (`/sentry`), verifies tenant isolation on every SQL query (no IDOR), and scrubs secret leaks. |
| **Dr. Amy Farrah Fowler** | **`/amy`** | **`/amy-devops`** | **`/devops`** | **Platform, DevOps & SRE Lead.** Treats infrastructure like a nervous system: multi-stage Dockerfiles, GitHub Actions CI/CD, structured JSON logging (`/sre`), health probes, and telemetry. |
| **Autonomous Conductor** | **`/squad`** | **`/dispatch`** | **`/orchestrate`** | **Autonomous Subagent Conductor.** Dispatches parallel subagents to execute all tracks (DB, Backend, Frontend, QA) concurrently using Antigravity's subagent engine. |

---

## 💡 Why This Works (The Engineering Insight)

Standard AI coding assistants fail in predictable ways:
1. **Frontend Overlap:** AI uses `position: absolute` and magic pixels. **Penny** forbids absolute layout positioning, enforces `min-w-0` on flex items, and mandates the 5 Universal UI States (`Empty`, `Loading`, `Error`, `Partial`, `Ideal`).
2. **Shotgun Debugging:** AI guesses random edits and adds `try/catch` around symptoms. **Raj** mandates a runnable reproduction script *first*, greps all callers, and patches the single root cause.
3. **Scope Creep & Over-Engineering:** AI invents speculative abstract factories. **Leonard** cuts the MVP cutline and names what *not* to build; **Howard** forces the shortest working diff.
4. **IDOR & Security Leaks:** AI forgets tenant boundaries in SQL queries. **Bernadette** audits every endpoint to ensure `org_id` / ownership is strictly validated.

---

## 🚀 How to Run a Feature (Real-Life Flow)

You are the Tech Lead. Directing your squad is as simple as talking to senior engineers:

### 1. Planning with Leonard & Sheldon
> **Tech Lead:** *"Sheldon, users need to invite teammates with custom roles. Orchestrate the squad."*  
> **Sheldon:** *"Bazinga. Leonard (`/leonard-product`), draft the `/btt` spec and acceptance criteria."*  
> **Leonard:** *"Done. Outlined the state machine (`Pending` $\rightarrow$ `Accepted` $\rightarrow$ `Revoked`) and isolated rabbit holes. Handing off to Howard and Penny."*

### 2. Building with Howard & Penny
> **Tech Lead:** *"Howard, create the migration and endpoints. Penny, build the UI view."*  
> **Howard:** *"Migration created with unique index on `(org_id, email)` and atomic service transaction written."*  
> **Penny:** *"Locked in Howard's API contract. Built the invitation table and side-sheet modal with matched skeleton loaders and zero absolute hacks."*

### 3. Verifying & Securing with Raj & Bernadette
> **Tech Lead:** *"Raj, run QA. Bernadette, do a security sweep."*  
> **Raj:** *"Seam-based TDD tests pass. Found one edge case with unicode emails; wrote a reproduction test and verified Howard's patch. Pruned 40 lines of AI dead code."*  
> **Bernadette:** *"Checked the SQL queries. Tenant isolation is verified: unauthorized users cannot view cross-organization invites. Approved for deploy."*

---

## 📦 Manual Installation

If you prefer to install manually:

1. Clone this repository:
   ```bash
   git clone https://github.com/pyscriptcli/thebigbang.git
   ```
2. Copy the `skills/` folders into your assistant's skills directory:
   * **Google Antigravity:** `~/.gemini/config/skills/`
   * **Claude Code:** `~/.claude/skills/`
   * **Project Local:** `.agents/skills/` or `.claude/skills/`

---

## 📜 License

MIT © [pyscriptcli](https://github.com/pyscriptcli)
