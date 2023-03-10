setup: ## Run migrations, install packages
	@make -C mmm setup

dev:  ## Run the circus
	@make -C mmm dev

test: ## Run test suite
	@make -C mmm test

console: ## Run rails console
	@make -C mmm console

protoc: ## Generate protobuf Ruby files
	@protoc --proto_path=protos --ruby_out=messages protos/*.proto

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = "(:|:[^:]*?## )"}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' | sort

.PHONY: setup dev test console protoc
.DEFAULT_GOAL := help