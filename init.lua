vim.opt.exrc = true
vim.opt.secure = true

require("config.lazy")

require('mini.completion').setup()
require('mini.statusline').setup({
	use_icons = false
})
require('mini.surround').setup()
require('mini.comment').setup()
require('mini.icons').setup({
	style="ascii"
})
require('mini.diff').setup()
require('mini.tabline').setup()
require('mini.trailspace').setup()
require('mini.extra').setup()
require('mini.align').setup()
require('mini.indentscope').setup()
require('mini.notify').setup()

vim.lsp.enable('clangdlsp')
vim.lsp.enable('odinlsp')
vim.lsp.enable('rustlsp')
vim.lsp.enable('golsp')
vim.lsp.enable('cmake')

vim.cmd[[colorscheme tokyonight-storm]]
