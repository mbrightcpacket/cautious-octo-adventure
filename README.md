# cautious-octo-adventure

> Caution: This is pre-release software and should not be used in production.

Every ["Azure button"][azure-button] starts with:

```bash
https://portal.azure.com/#create/Microsoft.Template/uri/
```

The escaped URL for the ARM template is:

```bash
https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json
```

Combine the two and you get:

```bash
https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json
```

The Create UI definition file is:

```bash
https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/main/createUIDefinition.json
```

URL encoded, this is:

```bash
https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUiDefinition.json
```

Using the create UI definition file to provide the forms:

```bash
https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUiDefinition.json
```

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FcPacketNetworks%2Fazure-deployer%2Flatest%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FcPacketNetworks%2Fazure-deployer%2Flatest%2FcreateUiDefinition.json)

(https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FcPacketNetworks%2Fazure-deployer%2Flatest%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2FcPacketNetworks%2Fazure-deployer%2Flatest%2FcreateUiDefinition.json)

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUIDefinition.json)

[azure-button]: https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-azure-button
