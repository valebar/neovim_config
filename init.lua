vim.opt.exrc = true
vim.opt.secure = true
-- vim.api.nvim_set_option("clipboard","unnamed")

require("config.lazy")

vim.lsp.enable('clangdlsp')
vim.lsp.enable('odinlsp')
vim.lsp.enable('rustlsp')
vim.lsp.enable('golsp')
vim.lsp.enable('cmake')
vim.lsp.enable('tsserver')
-- colorscheme
vim.cmd[[colorscheme tokyonight-storm]]
-- custum keymaps
-- jump to declaration
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
-- jump to definition
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

