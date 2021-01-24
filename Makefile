include .env

.PHONY: help dan-start dan-stop dan-start-local

help: 
	@echo "Usage: make [TARGET ...]"
	@echo ""
	@grep --no-filename -E '^[a-zA-Z_%-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "%-15s %s\n", $$1, $$2}'

dan-stop: 

dan-start: dan-stop dan-build 
	@docker-compose up -d;

dan-start-local: dan-stop dan-build #
	@docker-compose up --scale nginx=0;

dan-build:
	@docker-compose build;
