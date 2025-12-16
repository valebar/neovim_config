return {
	'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-treesitter/nvim-treesitter'
	},
	keys = {
		{ "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Telescope find files" },
		{ "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Telescope live grep" },
		{ "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = "Telescope buffers" },
		{ "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", desc = "Telescope help tags" },
	},
	extensions = {"flutter"}
}
