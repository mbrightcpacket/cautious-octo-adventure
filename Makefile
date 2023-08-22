default := all
dockerid := mbrightcpacket
dockerimage := registerappliances
dockerversion := 0.0.1
azurefunction := registerangryhippo
resourcegroup := mbright-bicep-test

.PHONY: all
all: build format

.PHONY: build
build: format
	az bicep build --file main.bicep

.PHONY: format
format:
	az bicep format --file main.bicep
	find . -type f -name "*.sh" -exec shfmt --diff --case-indent --indent 2 -w {} \;
	find . -type f -name "*.py" -exec black {} \;

.PHONY: json
json:
	jq -r '.' parameters.json | sponge parameters.json

.PHONY: lint
lint:
	shellcheck *.sh

.PHONY: publish
publish: format
	func azure functionapp publish ${azurefunction}

.PHONY: deploy
deploy:
	./deploy.sh

.PHONY: package
package:
	tar zcf hippo.tar.gz main.bicep parameters.json host.json deploy*.sh *.py Makefile *.txt

.PHONY: zip
zip:
	zip -r function_app.zip function_app.py host.json requirements.txt

.PHONY: docker-build
docker-build:
	docker build --tag ${dockerid}/${dockerimage}:${dockerversion} .

.PHONY: docker-push
docker-push:
	docker push ${dockerid}/${dockerimage}:${dockerversion}

.PHONY: update-deployment
update-deployment:
	az functionapp config container set --image ${dockerid}/${dockerimage}:${dockerversion} --registry-password something-very-secret --registry-username ${dockerid} --name ${azurefunction} --resource-group ${resourcegroup}
