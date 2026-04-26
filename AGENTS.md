# AGENTS.md

This file provides context for AI coding agents working on this project.

**Read [README.md](README.md) first.** It contains the project description, setup instructions, and all common commands.

## Project Decisions

- **Testing**: RSpec (not minitest). Specs live in `spec/`. System specs live in `spec/system/`.
- **Linting**: Standard Ruby with `standard-rails` and `standard-rspec` plugins. Configured in `.standard.yml`.
- **Database**: SQLite.
- **CI**: GitHub Actions. See `.github/workflows/ci.yml`.

## Rules

- **Do not change Reek configuration or rules.** If you are stuck on a Reek warning or believe a rule does not make sense, present your case to the user and only make changes after explicit approval.

## Workflow

1. Always run `make lint` before committing to ensure code passes Standard Ruby.
2. Always run `make reek` before committing to check for code smells.
3. Always run `make test` to verify changes don't break existing specs.
4. Follow the [commit conventions](docs/commits.md) for all commits.
