---
name: commits
description: Create commit messages following this project's commit conventions.
---

## Goal

Create clear, well-structured commit messages following the project's commit conventions.

## Reference

Read and follow the commit conventions defined in `docs/commits.md`.

## Workflow

1. Run `git diff --cached` (or `git diff` if nothing is staged) to understand the changes.
2. Read `docs/commits.md` for the commit message format, types, scopes, and rules.
3. Formulate a commit message that follows the conventions.
4. If the changes span multiple scopes, consider whether they should be split into separate commits.
5. Include a body only when the description alone is not sufficient.
6. Add footer references to issues when applicable.
7. Commit when the user asks.

## Rules

- Always analyze the actual code changes before writing a message.
- Never guess — if the type or scope is unclear, ask the user.
- Use only the types and scopes defined in `docs/commits.md`.
- If a new scope seems needed, suggest it to the user rather than inventing one silently.
