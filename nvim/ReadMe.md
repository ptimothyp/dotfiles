## Install a package manager
```shell
git clone https://github.com/k-takata/minpac.git \
    ~/.config/nvim/pack/minpac/opt/minpac
```

## Install fuzzy searh
```shell
sudo pacman -S fzf
```
```powershell
scoop install fzf
```

 ## Install RipGrep which is the default search in nvim
 ```shell
 snap install ripgrep --classic
 ```
 ```powershell
 scoop install ripgrep
 ```

## Install neo-remote 
### Install pip3
apt install python3-pip

### Install neo remote using pip3
pip3 install --user --upgrade neovim-remote


## Install minpac
Get the packpath
```vimcommand
:set pp?
```

Clone minpac to the packpath
For example if the packpath is ~\_vim

```powershell
git clone https://github.com/k-takata/minpac.git C:\Users\Timothy\_vim\pack\minpac\opt\minpac
```
