.DEFAULT_GOAL:=help

##@ Setup

.PHONY: setup-db
setup-db: ## Migrate Apache Superset DB
	poetry run superset db upgrade

.PHONY: setup-admin
setup-admin: ## Setup Apache Superset admin user
	poetry run superset fab create-admin --username admin --firstname admin --lastname user --email admin@fab.org --password admin

.PHONY: setup-superset
setup-superset: setup-db setup-admin ## Setup Apache Superset
	poetry run superset init

##@ Run
.PHONY: run-superset
run-superset: ## Run Apache Superset
	poetry run superset run -h 0.0.0.0 -p 8088 --with-threads --reload --debugger

##@ Helpers

.PHONY: help
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

