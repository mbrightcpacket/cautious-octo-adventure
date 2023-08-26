# cautious-octo-adventure

> Caution: This is unofficial, pre-release software, and should NOT be used in production.

## Copy the appliances into your Azure subscription

Before deploying the cPacket cCloud appliances, they must be copied into your Azure subscription.

1. Obtain the appliance URL file from cPacket (default name `ccloud-urls.txt`).
1. Open the Azure cloud shell.
1. Upload it to the Azure cloud shell.
1. Download and execute the `ccloud-azure-create-image` script.

### Obtain the appliance URLs file

Contact cPacket Networks to obtain the appliance URLs file.

### Open the Azure cloud shell

Open the Azure cloud shell by clicking on the icon in the upper right corner of the Azure portal.

![Open the shell](open-shell.png "Open the Azure cloud shell")

### Upload the file containing the appliance URLs

cPacket will provide you with a file containing the URLs of the appliances.
It contains the URLs with Shared Access Signatures (SAS) for the appliances.
Upload this file to Azure cloud shell.
(The root directory of the cloud shell is expected, and it is the default upload location.)

![Upload file](upload-file-to-shell.png "Upload the 'ccloud-urls.txt' file to shell")

### Create the images

The `ccloud-azure-create-image` script will create the images in your Azure subscription by first copying them using the SAS enabled URLs provided above.

If you are creating a new resource group, use the following invocation:

```bash
curl -L https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/main/ccloud-azure-create-image | bash
```

This will pipe the script directly into Bash and will create a new resource group called `cpacket-ccloud` in the `eastus2` region.

Instead, if you have an existing resource group, first download the script and then supply it with the name of your resource group.

Download the script:

```bash
curl -L https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/main/ccloud-azure-create-image > ccloud-azure-create-image
```

Make it executable:

```bash
chmod +x ccloud-azure-create-image
```

Run it:

```bash
./ccloud-azure-create-image -g resource-group-name
```

After executing the script, you should have new resources in your resource group corresponding to the cCloud appliances in the URL file above:

![New resources](new-resources.png "cCloud images")

## Deploy to Azure

After creating the appliance images, you can deploy them.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUIDefinition.json)

## Extra resources

Not everything can be deployed via the Bicep templates, so there are some extra resources that need to be created manually.

### Azure Function App

## Contributing

### Generating the Azure button

To create the [Azure button][azure-button], you need to run the `azure-button.py` script, which takes two arguments:

```bash
./azure-button.py -a https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/test1/main.json -u https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/test1/createUIDefinition.json
```

... produces:

```bash
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUIDefinition.json)
```

... which is then pasted into the `README.md` file and rendered as:

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUIDefinition.json)

Clicking the button above will take you to the Azure portal and start the custom deployment process with the version tagged `test1`, as illustrated below:

![custom deployment](deployment.png "Custom Deployment")

### Editing the browser UI

There is also a [browser based interface][ui-definition] to edit the UI definition that defines the above flow.

[azure-button]: https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-azure-button
[ui-definition]: https://portal.azure.com/?feature.customPortal=false#view/Microsoft_Azure_CreateUIDef/SandboxBlade]