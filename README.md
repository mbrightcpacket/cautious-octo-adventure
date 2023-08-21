# cautious-octo-adventure

> Caution: This is unofficial, pre-release software, and should NOT be used in production.

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

The latest [Create UI definition][ui-definition] file is:

```bash
https://github.com/mbrightcpacket/cautious-octo-adventure/releases/download/deploying-minus-function/createUIDefinition.json
```

URL encoded, this is:

```bash
https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUIDefinition.json
```

Using the create UI definition file to provide to the custom deployment UI:

```bash
https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUIDefinition.json
```

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fgithub.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Freleases%2Fdownload%2Fdeploying-minus-function%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fgithub.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Freleases%2Fdownload%2Fdeploying-minus-function%2FcreateUIDefinition.json)

Clicking the button above will take you to the Azure portal and start the custom deployment process, as illustrated below:

![custom deployment](deployment.png "Custom Deployment")

[azure-button]: https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-azure-button
[ui-definition]: https://portal.azure.com/?feature.customPortal=false#view/Microsoft_Azure_CreateUIDef/SandboxBlade]
