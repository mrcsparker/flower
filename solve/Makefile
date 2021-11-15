.DEFAULT_GOAL:=help

##@ Setup

.PHONY: setup-mlflow
setup-mlflow: ## Setup MLFlow
	@mkdir -p ./mlflow/mlruns
	@mkdir -p ./mlflow/mllogs

##@ Run
.PHONY: run-mlflow
run-mlflow: ## Run MLFlow server
	@poetry run mlflow server --backend-store-uri postgresql://mlflow_user:mlflow@localhost/mlflow_db --default-artifact-root ./mlflow/mlruns -h 0.0.0.0 -p 8000

##@ Helpers

.PHONY: help
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

