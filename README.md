# cautious-octo-adventure

> Caution: This is unofficial, pre-release software, and should NOT be used in production.

## Contributing

### Generating the Azure button

To create the [Azure button][azure-button], you need to run the `azure-button.py` script, which takes two arguments:

```bash
./azure-button.py -a https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/test1/main.json -u https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/test1/createUIDefinition.json
```

... produces:

```bash
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Ftest1%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Ftest1%2FcreateUIDefinition.json)
```

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Ftest1%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Ftest1%2FcreateUIDefinition.json)

Clicking the button above will take you to the Azure portal and start the custom deployment process with the version tagged `test1`, as illustrated below:

![custom deployment](deployment.png "Custom Deployment")

### Editing the browser UI

There is also a [browser based interface][ui-definition] to edit the UI definition that defines the above flow.

[azure-button]: https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-azure-button
[ui-definition]: https://portal.azure.com/?feature.customPortal=false#view/Microsoft_Azure_CreateUIDef/SandboxBlade]
