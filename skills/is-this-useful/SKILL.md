---
name: is-this-useful
description: Context-aware attention filter for AI agents. Evaluates links, repos, papers, products, and trends against recent work before recommending Use, Test, Watch, or Skip.
version: 1.0.0
author: Is This Useful contributors
license: MIT
metadata:
  hermes:
    tags: [research, evaluation, prioritization, attention-management, strategy, decision-memo]
---

# Is This Useful?

## Trigger

Use this skill when the user asks to research, assess, evaluate, or give a view on a shared item, trend, tool, article, repo, paper, product, framework, workflow, or market claim — especially when they ask:

- "Is this useful?"
- "Should we care?"
- "Is this worth our attention?"
- "Do research on this."
- "Can we use this?"
- "Is there something better?"
- "Should we adopt this?"
- "What is your take on this?"

## Goal

Do **not** blindly summarize or follow claims. Decide whether the material is useful for the user's actual work, based on recent context, evidence, alternatives, and adoption cost.

Core promise:

> This saves attention and bad decisions.

## Required workflow

### 1. Clarify only if needed

Ask one concise question only when the target decision is genuinely unclear.

Good clarification:

```text
What decision do you want: adopt, pilot, buy, write about, or ignore?
```

If enough context exists, proceed.

### 2. Recover recent work context

Before web research, inspect available user/project context.

Use whatever the host agent supports:

- conversation/session search
- memory/notes
- project files such as `README.md`, `AGENTS.md`, `CLAUDE.md`, `.cursorrules`
- issue trackers or kanban boards
- recent plans, docs, or task lists

Look for active projects, repeated needs, current blockers, existing tools, and priorities.

If the agent has no memory/session tools, ask for a 3–5 bullet context snapshot or evaluate against the current repo/project only.

### 3. Research the material

Identify:

- what it is
- maturity and maintenance status
- main claims
- pricing/access model
- integrations and setup cost
- failure modes
- adoption signals
- credible critiques
- better alternatives

Prefer primary docs, source code, GitHub issues, benchmarks, pricing pages, and real user reports over marketing pages.

### 4. Compare against use cases

Evaluate against all active work equally unless the user names a priority.

Ask:

- Does this solve a current problem?
- Does it reduce time, risk, cost, or complexity?
- Does it duplicate something already working?
- Does it create hidden maintenance, security, privacy, or workflow costs?
- Would a smaller test prove value quickly?

### 5. Check alternatives

Name 1–3 alternatives when relevant.

Include existing tools/workflows, simpler direct tools, competing projects/products, and "do nothing / wait" when attention cost exceeds value.

### 6. Return decision first

Keep output short unless the user asks for a deep dive.

## Output format

```markdown
Verdict: Use / Test / Watch / Skip

Why:
- <1–3 bullets tied to actual work/context>

Best fit:
- <specific use case, if any>

Better options:
- <alternative or "none found" / "do nothing for now">

Next step:
- <one concrete action, or "ignore for now">
```

## Decision rules

- **Use**: clear match to active work, low adoption friction, credible evidence.
- **Test**: plausible fit but needs a small proof-of-concept.
- **Watch**: promising but immature, expensive, unclear, or not urgent.
- **Skip**: weak fit, weak evidence, redundant with current tools, or distracts from priorities.

## Evidence grading

| Signal | Weight |
|---|---|
| Primary docs/source code/pricing/issues | High |
| Reproducible benchmark or transparent case study | High |
| Maintainer activity and resolved issues | Medium/high |
| Real after-use reports | Medium |
| Launch posts, star spikes, influencer reposts | Low |
| Vendor claims without demos/evidence | Low |

## Guardrails

- Do not over-index on viral Reddit/Twitter/LinkedIn claims.
- Do not recommend adoption without a real work fit.
- Do not produce long generic summaries unless asked.
- State uncertainty plainly.
- If the best answer is "not useful right now," say that.
- Prefer a small pilot over a big commitment.
- Protect the backlog. A good answer can be "skip."

## Style

- Decision first.
- Short bullets.
- No long preambles.
- No repeated caveats.
- Link evidence when useful.
