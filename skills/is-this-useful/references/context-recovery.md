# Context Recovery Patterns

Before judging usefulness, recover recent context.

## If the agent has session/memory search

Search for the domain, current project names, repeated workflow nouns, recent blockers, and recent tool names.

Summarize active context internally. Output only what supports the decision.

## If inside a repo

Read `README.md`, `AGENTS.md`, `CLAUDE.md`, `.cursorrules`, issue/roadmap docs, and package metadata.

## If no context tools exist

Ask:

```text
Give me 3 active projects or priorities to evaluate this against.
```

Do not pretend to know the user's work.
