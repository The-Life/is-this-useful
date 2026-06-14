# Roadmap

This project should grow from real usage, not speculative features. The near-term roadmap is about finding where a decision-first agent skill genuinely helps people protect attention.

## Direction

`is-this-useful` is valuable when it helps an agent answer:

- Does this repo, paper, product, trend, or tweet fit my actual work?
- Is there enough evidence to spend time on it?
- Is the right next action Use, Test, Watch, or Skip?

The goal is not to make another summarizer. The goal is to make agents more selective, evidence-aware, and context-aware.

## Near-term priorities

### 1. Real-world feedback research

Research conversations across Reddit, X/Twitter, Hacker News, GitHub, and AI-builder communities to understand where people already lose time to shiny tools, verbose summaries, and overgrown backlogs.

Useful signals:

- Complaints about agents being too agreeable or verbose.
- Examples where a new tool/repo looked exciting but was not worth adopting.
- Workflows where a fast Use/Test/Watch/Skip verdict would save time.
- Phrases and objections real users use when describing this problem.

### 2. Better examples from actual use cases

Collect realistic examples for:

- GitHub repo triage.
- AI paper/research triage.
- SaaS/vendor evaluation.
- Trend or tweet evaluation.
- Team backlog protection.

Good examples should include the input, the verdict, the evidence used, and the recommended next step.

### 3. Decision-quality evaluation

Compare `is-this-useful` against normal summary-first agent behavior.

Questions to test:

- Does verdict-first output reduce time-to-decision?
- Does it prevent low-value TODOs?
- Does it surface better alternatives?
- Does it recommend appropriately small tests instead of full adoption?

### 4. Installation and usage polish

Make the skill easier to try across common agent environments:

- Add screenshots or a short GIF.
- Verify install paths across Codex, Claude Code, Cursor, Windsurf, Hermes, and generic Skills-compatible agents.
- Keep examples small enough that a new user can try the skill in under two minutes.

## Longer-term ideas

- Community-submitted examples and verdict improvements.
- Domain-specific rubrics for engineering, sales, research, investing, and operations.
- A small public benchmark of usefulness decisions.
- Optional templates for team-specific adoption criteria.

## Non-goals

- Replacing deep research.
- Ranking every tool on the internet.
- Turning every interesting link into a backlog item.
- Requiring private user data to be useful.
