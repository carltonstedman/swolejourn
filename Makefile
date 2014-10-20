all: Gemfile.lock

## Cleanup
clean: beclean scmversion

beclean:
	bundle 2>&1 > /dev/null && \
	rm -f Gemfile.lock && \
	bundle clean --force && \
	bundle

scmversion: beclean
	bundle exec thor version:current
