.PHONY: default build clean docs git-hook pretty lint test run

default: build

build: _site

clean:
	rm --force --recursive _site node_modules

docs:
	@echo "This project has no documentation."

git-hook:
	echo "make pretty" > .git/hooks/pre-commit

pretty: node_modules
	yarn biome check --write --no-errors-on-unmatched
	npm pkg fix

lint: node_modules
	yarn biome check .

test: build
	@echo "This project has no tests."

run: build
	hugo server --buildDrafts


node_modules:
	yarn install

_site: node_modules
	yarn hugo --environment production --minify
