## Install fuzzy searh
```shell
sudo pacman -S fzf
```

 ## Install RipGrep which is the default search in nvim
 ```shell
 snap install ripgrep --classic
 ```

## Install neo-remote 
### Install pip3
apt install python3-pip

### Install neo remote using pip3
pip3 install --user --upgrade neovim-remote

## Install language servers
### Powershell
Download the language server and unzip it.
(Powershell) (https://github.com/PowerShell/PowerShellEditorServices/releases)
```lua 
require('lspconfig')['powershell_es'].setup{
    bundle_path = 'c:/tools/PowerShellEditorServices',
    shell = 'powershell.exe',
    on_attach = on_attach,
    flags = lsp_flags,
}

```
### Typescript
Prerequisite : Node and npm
```commandline
npm i -g typescript-language-server typescript-language-server
```
