return {
	'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-treesitter/nvim-treesitter'
	},
	keys = {
		{ "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>",            desc = "Find files" },
		{ "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>",             desc = "Live grep" },
		{ "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>",               desc = "Buffers" },
		{ "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>",             desc = "Help tags" },
		{ "<leader>fd", "<cmd>lua require('telescope.builtin').diagnostics()<cr>",           desc = "Diagnostics" },
		{ "<leader>fs", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>", desc = "Workspace symbols" },
		{ "<leader>fr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>",        desc = "References" },
		{ "<leader>fi", "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>",   desc = "Implementations" },
	},
}
