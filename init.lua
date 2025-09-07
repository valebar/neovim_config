vim.opt.exrc = true
vim.opt.secure = true

require("config.lazy")

vim.lsp.enable('clangdlsp')
vim.lsp.enable('odinlsp')
vim.lsp.enable('rustlsp')
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
