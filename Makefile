%.js: %.min.js
	node_modules/.bin/js-beautify -f $< -o $@

analytics.min.js:
	curl -fsSL https://www.google-analytics.com/analytics.js -o $@

clean:
	rm -f analytics.js analytics.min.js

.PHONY: clean
