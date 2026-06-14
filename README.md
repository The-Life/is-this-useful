<p align="center">
  <img src="assets/is-this-useful.svg" width="120" alt="Is This Useful logo" />
</p>

<h1 align="center">Is This Useful?</h1>

<p align="center"><strong>This saves attention and bad decisions.</strong></p>

<p align="center">
  <a href="#install">Install</a> · <a href="#what-it-does">What it does</a> · <a href="#examples">Examples</a> · <a href="#agent-support">Agent support</a>
</p>

---

**Is This Useful?** is an agent skill that stops your AI from wasting attention on shiny distractions.

Paste a repo, paper, SaaS, product, trend, or tweet. Instead of summarizing the marketing page, your agent checks your recent work and returns:

```text
Use / Test / Watch / Skip
```

Not another summary. Not another detour. A usefulness verdict.

## The problem

AI agents are too agreeable. You paste a link and they often summarize claims, ignore fit, miss better alternatives, and turn every shiny thing into a TODO.

That is how teams lose attention.

## The promise

> **This saves attention and bad decisions.**

It makes the agent ask:

1. What have we been working on recently?
2. Does this thing fit any real use case?
3. Is there a better, cheaper, simpler option?
4. Should we **Use, Test, Watch, or Skip**?

## What it does

```text
Input:  "Is this useful? https://github.com/some/shiny-agent-tool"
Output: Verdict-first decision tied to your real work.
```

Default output:

```markdown
Verdict: Test

Why:
- Fits one active workflow, but overlaps with existing tools.
- Evidence is promising but mostly launch claims.
- Adoption cost is small enough for a pilot.

Best fit:
- 30-minute repo/research triage.

Better options:
- Existing browser/web tools for normal research.
- Direct platform APIs for production use.

Next step:
- Run one small pilot; do not migrate workflow yet.
```

## Install

### Universal install with Skills CLI

Works for Codex, Claude Code, Cursor, Windsurf, OpenCode, and other Skills-compatible agents:

```bash
npx -y skills add The-Life/is-this-useful -a codex -s is-this-useful -g -y
```

Use another agent profile:

```bash
npx -y skills add The-Life/is-this-useful -a claude-code -s is-this-useful -g -y
npx -y skills add The-Life/is-this-useful -a cursor -s is-this-useful -g -y
npx -y skills add The-Life/is-this-useful -a '*' -s is-this-useful -g -y
```

### Install for Hermes Agent

```bash
curl -fsSL https://raw.githubusercontent.com/The-Life/is-this-useful/main/install.sh | bash -s -- --hermes
```

Local clone install:

```bash
git clone https://github.com/The-Life/is-this-useful.git
cd is-this-useful
./install.sh --hermes
```

## Agent support

| Agent/tool | Status | Install path |
|---|---:|---|
| Codex CLI | ✅ | `npx skills add ... -a codex` |
| Claude Code | ✅ | `npx skills add ... -a claude-code` |
| Cursor | ✅ | `npx skills add ... -a cursor` |
| Windsurf | ✅ | `npx skills add ... -a windsurf` |
| OpenCode / other Skills agents | ✅ | `npx skills add ... -a <agent>` |
| Hermes Agent | ✅ | `./install.sh --hermes` |
| Generic agents | ✅ | Copy `skills/is-this-useful/SKILL.md` into your agent instructions |

## Examples

### Repo usefulness check

```text
Is this useful? https://github.com/Panniantong/Agent-Reach
```

Expected answer:

```text
Verdict: Test
Why: useful for live platform research; overlaps with existing browser/web tools; social scraping fragile.
Next step: run a small pilot, no cookies yet.
```

### Vendor check

```text
Should we care about this new AI sales tool?
```

Expected answer:

```text
Verdict: Skip
Why: duplicates current enrichment/outreach workflow; no export/API clarity; adoption cost high.
Next step: ignore for now.
```

## Why this is different

Most research agents answer: “What is this?”

This skill answers: “Should *we* spend attention on this?”

| Normal research skill | Is This Useful? |
|---|---|
| Summarizes | Decides |
| Starts from the link | Starts from recent work |
| Repeats claims | Checks evidence and alternatives |
| Produces notes | Produces a next action |
| Adds backlog | Protects backlog |

## Decision rubric

| Verdict | Meaning |
|---|---|
| **Use** | Clear fit, low friction, credible evidence |
| **Test** | Plausible fit, but needs a small proof-of-concept |
| **Watch** | Interesting, but immature/not urgent/not yet relevant |
| **Skip** | Weak fit, redundant, costly, or mostly noise |

## Repository structure

```text
skills/is-this-useful/SKILL.md            # main skill
skills/is-this-useful/references/         # rubrics and evidence rules
examples/                                 # sample prompts and outputs
docs/                                     # positioning and publishing notes
scripts/validate.py                       # repo validation
install.sh                                # multi-agent install helper
KANBAN.md                                 # publish-today board
```

## License

MIT. See [`LICENSE`](LICENSE).
