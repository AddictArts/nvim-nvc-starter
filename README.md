# config/nvim

## From NvChad starter config

Forked and starting tweaking.

### Changed compose config and init

See configs/conform.lua and plugins/init.lua

### LUA

Install luarocks

**Ubuntu**:

```shell
```

**Rocky Linux**:

```shell
```

**Windows**

```pwsh
scoop install main/luarocks
```

### Rust

Install rust-analyzer and rust-src

```shell
rustup component add rust-analyzer
rustup component add rust-src

# neovim
:TSInstall rust # TSModuleInfo for other langs to install
```

### Treesitter

Markdown

```
:TSInstall markdown markdown_inline
```

Justfile

```
# Ref: lazy load tree-sitter-just :Lazy load tree-sitter-just
:TSInstall just
```
