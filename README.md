# Install nvim

** Windows **

`winget install Neovim.Neovim`

**Linux**

```shell
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# .bashrc
export PATH="$PATH:/opt/nvim-linux64/bin"
```

---

# config/nvim

## From NvChad starter config

Forked and starting tweaking.

### Changed compose config and init

See configs/conform.lua and plugins/init.lua

### LUA

Install luarocks

**Ubuntu**:

```shell
sudo apt install luarocks
```

**Rocky Linux**:

```shell
sudo dnf install luarocks
```

**Windows**

```pwsh
scoop install main/luarocks
```

### Treesitter

> :TSInstall luadoc rust markdown markdown_inline typescript javascript json jsdoc dockerfile yaml bash

Just

```
# Ref: lazy load tree-sitter-just :Lazy load tree-sitter-just
:TSInstall just
```

Web - Typescript etc.

```
:TSInstall typescript javascript json jsdoc
```

### Mason

> :MasonInstall codelldb dockerfile-language-server yaml-language-server bash-language-server bash-debug-adapter

```
# may not need to do this with vscode and the extension already installed to $Env:USERPROFILE/.vscode/extensions
:MasonInstall codelldb
```

## Rust

Install rust-analyzer and rust-src

```shell
rustup component add rust-analyzer
rustup component add rust-src

# neovim
# :TSInstall rust # TSModuleInfo for other langs to install
```

### DAP

```shell
:lua local widgets=require("dap.ui.widgets"); local sidebar=widgets.sidebar(widgets.scopes); sidebar.open();
```

#### dapui

Install control icons

```
npm i -g @vscode/codicons
```

```
:lua require("dapui").setup{}
:lua require("dapui").open()
```
