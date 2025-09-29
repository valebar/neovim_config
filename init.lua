vim.opt.exrc = true
vim.opt.secure = true

require("config.lazy")

require('mini.completion').setup()
require('mini.statusline').setup()
require('mini.surround').setup()
require('mini.comment').setup()
if (package.config:sub(1,1) == '\\') then
	require('mini.icons').setup({
		style="ascii"
	})
else
	require('mini.icons').setup({
		style="glyph"
	})
end
require('mini.diff').setup()
require('mini.tabline').setup()
require('mini.trailspace').setup()
require('mini.extra').setup()

vim.lsp.enable('clangdlsp')
vim.lsp.enable('odinlsp')
vim.lsp.enable('rustlsp')
vim.lsp.enable('golsp')
-- vim.lsp.config('rust_analyzer', {
-- 	settings = {
-- 		['rust-analyzer'] = {
-- 			diagnostics = {
-- 				enable = false;
-- 			}
-- 		}
-- 	}
-- })
vim.cmd[[colorscheme tokyonight-storm]]
