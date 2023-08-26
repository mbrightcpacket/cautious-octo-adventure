# Generate the Azure deployment buttons

To create the Azure button, run the `azure-button.py` script, which takes two arguments:

```bash
./azure-button.py -a https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/test1/main.json -u https://raw.githubusercontent.com/mbrightcpacket/cautious-octo-adventure/test1/createUIDefinition.json
```

... produces:

```bash
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2Fmain.json/createUIDefinitionUri/https%3A%2F%2Fraw.githubusercontent.com%2Fmbrightcpacket%2Fcautious-octo-adventure%2Fmain%2FcreateUIDefinition.json)
```
