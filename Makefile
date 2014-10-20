all: Gemfile.lock serve

## Serve
serve: Gemfile.lock
	bundle exec jekyll serve --watch --quiet --detach -H 127.0.0.1 -P 4000

## Cleanup
clean: beclean scmversion

beclean:
	bundle 2>&1 > /dev/null && \
	rm -f Gemfile.lock && \
	bundle clean --force && \
	bundle

scmversion: beclean
	bundle exec thor version:current
