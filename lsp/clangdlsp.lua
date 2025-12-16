return {
	cmd = {
		'clangd',
		'--background-index',
		'--clang-tidy',
		-- '--header-insertion=iwy',
		'--completion-style=detailed',
		'--function-arg-placeholders',
		'--fallback-style=llvm',
	},
	filetypes = {'c', 'cpp', 'h', 'C', 'hpp', 'objcpp', 'objc'},
	keys = {
		{ "<leader>gD", "<cmd> lua vim.lsp.buf.declaration()<CR>", desc = "LSP go to declaration" },
		{ "<leader>gd", "<cmd> lua vim.lsp.buf.definition()<CR>", desc = "LSP go to definition" },
	}
}
