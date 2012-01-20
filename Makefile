test:
	@./support/expresso/bin/expresso test/*.test.js \
		--timeout 12000 \
		--serial

docs: index.html

index.html:
	dox \
		--title "Knox" \
		--desc "Light-weight Amazon S3 client for [NodeJS](http://nodejs.org)." \
		--ribbon "http://github.com/LearnBoost/knox" \
		--private \
		lib/knox/*.js > $@

docclean:
	rm -f index.html

.PHONY: test docs docclean