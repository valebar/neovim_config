# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A personal Neovim configuration using Lua, managed by [lazy.nvim](https://lazy.folke.io/). There are no build, lint, or test commands — this is a pure editor config that takes effect when Neovim starts.

To test changes, reload the config inside Neovim with `:source $MYVIMRC` or restart Neovim.

## Architecture

### Entry point

`init.lua` bootstraps the config: sets options, detects Nerd Font support, loads `config/lazy` (which initializes lazy.nvim and sets core editor options/leader keys), enables LSP servers, sets colorscheme, and defines global keymaps.

### Plugin specs — `lua/plugins/`

Each file returns a lazy.nvim plugin spec table. lazy.nvim auto-imports all files in this directory via `spec = { import = "plugins" }`.

### LSP configs — `lsp/`

Each file is a Neovim LSP server definition (name matches the string passed to `vim.lsp.enable()`). Enabled servers are listed explicitly in `init.lua`. Currently: clangd, odin, rust-analyzer, gopls, neocmakelsp, typescript-language-server.

### Filetype overrides — `after/ftplugin/`

Per-language Vim settings applied after filetype detection. Currently: `c.vim`, `cpp.vim`, `go.vim`, `odin.vim`.

## Key conventions

- **Leader**: `<Space>`, **local leader**: `\`
- `vim.g.have_nerd_font` is set in `init.lua` based on terminal detection; can be overridden to `true` in a local `.nvimrc` for terminals with Nerd Fonts that aren't auto-detected.
- `vim.o.exrc = true` + `vim.o.secure = true` allows per-project `.nvimrc` files.
- The lock file `lazy-lock.json` is gitignored intentionally.

## Keymaps reference

| Key | Action |
|-----|--------|
| `gd` / `gD` | LSP definition / declaration |
| `gr` / `gi` | LSP references / implementation |
| `K` / `<C-k>` | Hover / signature help |
| `<leader>rn` | Rename |
| `<leader>ca` | Code action |
| `<leader>f` | Format |
| `]g` / `[g` | Next / prev diagnostic |
| `<leader>d` | Diagnostic float |
| `<leader>ff/fg/fb/fh/fd/fs/fr/fi` | Telescope: files/grep/buffers/help/diagnostics/symbols/references/implementations |
| `<leader>lg` | LazyGit |
| `<leader>e` / `<leader>r` | mini.operators: exchange / replace |
