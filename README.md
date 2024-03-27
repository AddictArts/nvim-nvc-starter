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

> :TSInstall luadoc markdown markdown_inline typescript javascript json jsdoc dockerfile

Markdown

```
:TSInstall markdown markdown_inline
```

Just

```
# Ref: lazy load tree-sitter-just :Lazy load tree-sitter-just
:TSInstall just
```

Web - Typescript etc.

```
:TSInstall typescript javascript json jsdoc
```

Docker

```
:TSInstall dockerfile
```

### Rust

Install rust-analyzer and rust-src

```shell
rustup component add rust-analyzer
rustup component add rust-src

# neovim
:TSInstall rust # TSModuleInfo for other langs to install
```

#### DAP

```shell
# may not need to do this with vscode and the extension already installed to $Env:USERPROFILE/.vscode/extensions
:MasonInstall codelldb
```

```shell
:lua local widgets=require("dap.ui.widgets"); local sidebar=widgets.sidebar(widgets.scopes); sidebar.open();
```

