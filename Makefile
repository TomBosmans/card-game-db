.DEFAULT_GOAL := run

.PHONY: run lint lint-fix test test-system coverage server console db-setup db-migrate db-seed ci help

run: ## Install dependencies, prepare the database, and start the server
	@bin/setup

lint: ## Run Standard Ruby linter
	@bin/standardrb

lint-fix: ## Run Standard Ruby linter with auto-fix
	@bin/standardrb --fix

test: ## Run RSpec tests
	@bin/rspec

test-system: ## Run RSpec system tests
	@bin/rspec spec/system

coverage: ## Run tests and generate coverage report
	@bin/coverage

server: ## Start the development server
	@bin/dev

console: ## Open Rails console
	@bin/rails console

db-setup: ## Create, migrate, and seed the database
	@bin/rails db:setup

db-migrate: ## Run pending migrations
	@bin/rails db:migrate

db-seed: ## Seed the database
	@bin/rails db:seed

ci: ## Run the full CI suite
	@bin/ci

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
