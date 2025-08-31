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
	filetypes = {'c', 'cpp', 'h', 'C', 'hpp'}
}
