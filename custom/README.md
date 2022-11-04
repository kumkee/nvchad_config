# nvchad_custom
[NvChad](https://nvchad.com/) custom folder based on the [official minimal config](https://github.com/NvChad/example_config)

## Install
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
git clone git@github.com:kumkee/nvchad_custom.git ~/.config/nvim/lua/custom
ln -s ~/.config/nvim/lua/custom/ftplugin ~/.config/nvim/
```

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
