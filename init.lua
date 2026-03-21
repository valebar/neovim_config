vim.o.exrc   = true
vim.o.secure = true

-- Detect icon support: known capable terminals, not over SSH
-- Set to true in a local .nvimrc if your terminal has a Nerd Font configured
vim.g.have_nerd_font = vim.g.have_nerd_font or (
	vim.env.TERM_PROGRAM == 'ghostty' or
	vim.env.TERM_PROGRAM == 'kitty' or
	vim.env.TERM_PROGRAM == 'WezTerm' or
	vim.env.KITTY_WINDOW_ID ~= nil
) and vim.env.SSH_CLIENT == nil and vim.env.SSH_TTY == nil

require("config.lazy")

vim.lsp.enable('clangdlsp')
vim.lsp.enable('odinlsp')
vim.lsp.enable('rustlsp')
vim.lsp.enable('golsp')
vim.lsp.enable('cmake')
vim.lsp.enable('tsserver')

vim.cmd[[colorscheme tokyonight-storm]]

-- Navigation
vim.keymap.set("n", "gD", vim.lsp.buf.declaration,    { noremap = true, silent = true })
vim.keymap.set("n", "gd", vim.lsp.buf.definition,     { noremap = true, silent = true })
vim.keymap.set("n", "gr", vim.lsp.buf.references,     { noremap = true, silent = true })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { noremap = true, silent = true })

-- Docs
vim.keymap.set("n", "K",    vim.lsp.buf.hover,          { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { noremap = true, silent = true })

-- Actions
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,       { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,  { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f",  vim.lsp.buf.format,       { noremap = true, silent = true })

-- Diagnostics
vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { noremap = true, silent = true })
