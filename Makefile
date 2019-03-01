install:
	bundle install

run:
	bundle exec jekyll serve --config _config.yml,_config-dev.yml

build:
	bundle exec jekyll build

test: build
	bundle exec htmlproofer --http-status-ignore "999" ./_site
