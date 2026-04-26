# Card Game DB

A card game database application built with Rails 8.1, Ruby 4.0, and SQLite.

## Getting Started

```sh
make
```

This installs dependencies, prepares the database, and starts the development server.

## Common Commands

Run `make help` to see all available commands.

| Command | Description |
|---|---|
| `make` | Install dependencies, prepare the database, and start the server |
| `make server` | Start the development server |
| `make console` | Open Rails console |
| `make test` | Run RSpec tests |
| `make test-system` | Run RSpec system tests |
| `make lint` | Run Standard Ruby linter |
| `make lint-fix` | Run Standard Ruby linter with auto-fix |
| `make reek` | Detect code smells with Reek |
| `make db-setup` | Create, migrate, and seed the database |
| `make db-migrate` | Run pending migrations |
| `make db-seed` | Seed the database |
| `make ci` | Run the full CI suite |

## Testing

Tests are written with [RSpec](https://rspec.info/). System tests use Capybara with headless Chrome.

```sh
make test          # run all specs
make test-system   # run system specs only
```

## Linting

Code style is enforced by [Standard Ruby](https://github.com/standardrb/standard) with the `standard-rails` and `standard-rspec` plugins. Code smells are detected by [Reek](https://github.com/troessner/reek).

```sh
make lint      # check for violations
make lint-fix  # auto-fix violations
make reek      # detect code smells
```

## Documentation

Project documentation lives in `docs/`:

- [Development Setup](docs/setup.md)
- [Commit Conventions](docs/commits.md)

## CI

GitHub Actions runs linting, security scans, and tests on every pull request and push to `main`. See `.github/workflows/ci.yml` for details.
