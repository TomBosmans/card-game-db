# Commit Conventions

This project follows [Conventional Commits v1.0.0](https://www.conventionalcommits.org/en/v1.0.0/).

## Format

```
<type>(<scope>): <description>

[optional body]

[optional footer(s)]
```

## Types

- `feat` — a new feature
- `fix` — a bug fix
- `docs` — documentation only changes
- `style` — changes that do not affect the meaning of the code (whitespace, formatting, etc.)
- `refactor` — a code change that neither fixes a bug nor adds a feature
- `perf` — a code change that improves performance
- `test` — adding missing tests or correcting existing tests
- `build` — changes that affect the build system or external dependencies
- `ci` — changes to CI configuration files and scripts
- `chore` — other changes that don't modify src or test files

## Scopes

- `deps` — dependency changes (Gemfile, package.json)
- `config` — Rails config, routes, initializers
- `ui` — views, frontend, Tailwind
- `api` — API endpoints

Scopes are optional but encouraged when applicable. New scopes can be added as the project grows.

## Description

- Use the imperative, present tense: "add" not "added" nor "adds"
- Don't capitalize the first letter
- No period (.) at the end

## Body

Optional. Include a body when the description alone is not enough to understand the commit.

- Explain what the commit does and why, not how
- Use the imperative, present tense

## Footer

Optional. Use footers for issue references and breaking changes.

### Issue references

- `Closes: #<number>` — to close an issue
- `Refs: #<number>` — to reference a related issue

Multiple references are allowed:

```
Closes: #42
Refs: #123, #456
```

### Breaking changes

Use `BREAKING CHANGE:` in the footer followed by a description:

```
BREAKING CHANGE: card search endpoint now requires authentication
```

## Examples

### Simple commit

```
chore: add devcontainer configuration
```

### Commit with body

```
feat(api): add card search endpoint

Add endpoint to search cards by name, type, and mana cost.
Returns paginated results with default limit of 25.
```

### Commit with footer

```
fix(ui): correct card image aspect ratio

Use object-fit contain instead of cover to prevent cropping
on non-standard card art dimensions.

Closes: #12
Refs: #8
```

### Breaking change

```
refactor(api): restructure card response format

Flatten nested attributes into top-level fields to simplify
client-side parsing.

BREAKING CHANGE: card API responses no longer nest stats under a "attributes" key
Closes: #34
```
