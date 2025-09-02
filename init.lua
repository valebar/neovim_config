vim.opt.exrc = true
vim.opt.secure = true

require("config.lazy")

vim.lsp.enable('clangdlsp')
vim.lsp.enable('odinlsp')
vim.cmd[[colorscheme tokyonight-storm]]
