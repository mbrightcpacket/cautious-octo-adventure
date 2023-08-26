# Contributing

> If you are a cPacket Networks customer, please report issues through your [tech support service account][support].

We are happy to review pull requests referenced in your support tickets.

Each script or automation should be contained in an enclosing directory with accompanying `README.md` and any related diagrams.

The file and directory layout is arbitrarily subject to change, so use [permalinks][permalinks] to refer to specific files.

## Text and Documentation

- Markdown files should comply with the [CommonMark Markdown specification][commonmark] using the [markdown-it] library, as is done in [VS Code][vscode].
- Prose sentences should exist one per line, so as to make diff'ing easier.
  For instance,

    ```text
    This is the first sentence. And this is the second one.
    ```
  
  ... should be written in the markdown file as:

    ```text
    This is the first sentence.
    And this is the second one.
    ```

## Bash scripts

- Any Bash scripts must pass [shellcheck][shellcheck].
- Formatting of Bash scripts should comply with the following use of [shfmt][shfmt]:

    ```bash
    shfmt -i 4 -w script.sh
    ```

## Terraform

Terraform scripts and modules should be formatted according to:

```bash
terraform fmt
```

## Generating the Azure button

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

![custom deployment](/static-assets/deployment.png "Custom Deployment")

### Editing the browser UI

There is also a [browser based interface][ui-definition] to edit the UI definition that defines the above flow.

[shellcheck]: https://github.com/koalaman/shellcheck
[permalinks]: https://docs.github.com/en/repositories/working-with-files/using-files/getting-permanent-links-to-files
[shfmt]: https://github.com/mvdan/sh#shfmt
[vscode]: https://code.visualstudio.com/
[markdown-it]: https://github.com/markdown-it/markdown-it
[commonmark]: https://commonmark.org/
[support]: https://mysupport.cpacketnetworks.com
[azure-button]: https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-azure-button
[ui-definition]: https://portal.azure.com/?feature.customPortal=false#view/Microsoft_Azure_CreateUIDef/SandboxBlade
