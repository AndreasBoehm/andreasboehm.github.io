.DEFAULT_GOAL := help

.PHONY: help install clean run build test

help: ##show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

install: ##runs bundle install
	bundle install

clean: ##runs jekyll clean
	bundle exec jekyll clean

run: clean ##runks jekyll serve
	bundle exec jekyll serve --config _config.yml,_config-dev.yml

build: clean ##runs jekyll build
	bundle exec jekyll build

test: build ##runs jekyll build and htmlrpoofer
	bundle exec htmlproofer --http-status-ignore "999" ./_site
