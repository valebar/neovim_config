vim.o.exrc   = true
vim.o.secure = true

-- Disable unused providers to suppress checkhealth warnings
vim.g.loaded_perl_provider    = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider    = 0

-- Detect icon support: known capable terminals, not over SSH
-- Set to true in a local .nvimrc if your terminal has a Nerd Font configured
vim.g.have_nerd_font = vim.g.have_nerd_font or (
	vim.env.TERM_PROGRAM == 'ghostty' or
	vim.env.TERM_PROGRAM == 'kitty' or
	vim.env.TERM_PROGRAM == 'WezTerm' or
	vim.env.KITTY_WINDOW_ID ~= nil
) and vim.env.SSH_CLIENT == nil and vim.env.SSH_TTY == nil

require("config.pack")

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
-- vim.keymap.set("n", "<leader>f",  vim.lsp.buf.format,       { noremap = true, silent = true })

-- Telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files,      { desc = 'Telescope find files' })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep,       { desc = 'Telescope live grep'  })
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers,         { desc = 'Telescope buffers'    })
vim.keymap.set("n", "<leader>ld", telescope_builtin.lsp_definitions, { desc = 'Lsp definitions'      })

-- Diagnostics
vim.keymap.set("n", "]g", vim.diagnostic.goto_next, {desc = 'Diagnostics goto next'})
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, {desc = 'Diagnostics goto prev'})
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { noremap = true, silent = true })

-- Pack
vim.keymap.set('n', '<leader>u', '<cmd>lua vim.pack.update()<CR>', { desc = "Update packages" })

vim.cmd([[
  call syntaxless#Whitelist('global', ['String', 'Comment'])
  call syntaxless#Whitelist('python', ['pythonStatement', 'String', 'Comment'])
  call syntaxless#Whitelist('odin', ['String', 'Comment'])
  call syntaxless#Whitelist('c++', ['String', 'Comment'])
  call syntaxless#Whitelist('lua', ['Statement', 'String', 'Comment'])
  call syntaxless#Whitelist('markdown')
]])
