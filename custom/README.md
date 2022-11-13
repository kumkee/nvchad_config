# nvchad_custom
[NvChad](https://nvchad.com/) custom folder based on the [official minimal config](https://github.com/NvChad/example_config)

## Install
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
git clone git@github.com:kumkee/nvchad_custom.git ~/.config/nvim/lua/custom
ln -s ~/.config/nvim/lua/custom/ftplugin ~/.config/nvim/
```

### Install python provider (optional)
```
python3 -m venv ~/.local/share/pynvim
source ~/.local/share/pynvim/bin/activate
pip install -U pip wheel
pip install pynvim
deactivate
```

### Manual Installation - `usort` for example
```
mkdir ~/.local/share/nvim/mason/packages/usort
python3 -m venv ~/.local/share/nvim/mason/packages/usort/venv
source ~/.local/share/nvim/mason/packages/usort/venv/bin/activate
pip install -U pip
pip install usort
deactivate
ln -s ~/.local/share/nvim/mason/packages/usort/venv/bin/usort ~/.local/share/nvim/mason/bin/
```
`usort` is now available in Mason. The setup above is only for demo only.

## Update
Under nvim, `<leader> + uu`.

## Uninstall
```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## Plugin Managers
### CUI - [Mason](https://github.com/williamboman/mason.nvim)
To enter: `:Mason`
### CLI - [Packer](https://github.com/wbthomason/packer.nvim)
Update: `:PackerUpdate`
