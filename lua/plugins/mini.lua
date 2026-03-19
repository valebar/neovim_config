return {
	'echasnovski/mini.nvim',
	version = '*',
	config = function()
		require('mini.align').setup()
		require('mini.bracketed').setup({
			buffer = { options = { wrap = false } },
			comment = { suffix = '', options = { wrap = false } },
			conflict = { options = { wrap = false } },
			diagnostic = { options = { wrap = false } },
			file = { suffix = '', options = { wrap = false } },
			indent = { options = { wrap = false } },
			jump = { suffix = '', options = { wrap = false } },
			location = { suffix = '', options = { wrap = false } },
			oldfile = { suffix = '', options = { wrap = false } },
			quickfix = { options = { wrap = false } },
			treesitter = { suffix = '', options = { wrap = false } },
			undo = { options = { wrap = false } },
			window = { options = { wrap = false } },
			yank = { options = { wrap = false } },
		})
		require('mini.comment').setup()
		require('mini.move').setup()
		require('mini.operators').setup({
			evaluate = {
				prefix = '', -- disabled
			},
			exchange = {
				prefix = '<leader>e',
			},
			multiply = {
				prefix = '', -- disabled
			},
			replace = {
				prefix = '<leader>r',
			},
			sort = {
				prefix = '', -- disabled
			},
		})
		require('mini.completion').setup()
		require('mini.statusline').setup({
			use_icons = vim.g.have_nerd_font
		})
		require('mini.surround').setup()
		require('mini.icons').setup({
			style = vim.g.have_nerd_font and 'glyph' or 'ascii'
		})
		require('mini.diff').setup()
		require('mini.tabline').setup()
		require('mini.trailspace').setup()
		require('mini.extra').setup()
		require('mini.indentscope').setup()
		require('mini.notify').setup()
	end,
}
