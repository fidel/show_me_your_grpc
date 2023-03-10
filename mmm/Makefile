setup: # Install packages and run migrations
	@bin/setup

dev: ## Run the circus
	@$(MAKE) -j16 web

web: ## Rails server
	@bin/rails s -p 3000

test: ## Run test suite
	@bin/rails t

console: ## Run rails console
	@bin/rails console

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = "(:|:[^:]*?## )"}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' | sort

.PHONY: help web test console
.DEFAULT_GOAL := help