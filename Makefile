default := all

.PHONY: all
all: build format

.PHONY: build
build: format
	az bicep build --file main.bicep

.PHONY: format
format:
	az bicep format --file main.bicep
	# jq -r '.' parameters.json | sponge parameters.json
	find . -type f -name "*.sh" -exec shfmt --diff --case-indent --indent 2 -w {} \;
	find . -type f -name "*.py" -exec black {} \;

.PHONY: lint
lint:
	shellcheck *.sh

.PHONY: publish
publish: format
	func azure functionapp publish registerangryhippo

.PHONY: deploy
deploy:
	./deploy.sh

.PHONY: package
package:
	tar zcf hippo.tar.gz main.bicep parameters.json host.json deploy*.sh *.py Makefile *.txt

.PHONY: zip
zip:
	zip -r function_app.zip function_app.py host.json requirements.txt
