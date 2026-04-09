return {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',

    'typescript',
    'typescriptreact'
  },
  root_markers = {
    'tsconfig.json',
    'jsconfig.json',
    'package.json',
    '.git'
  },

  settings = {
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayEnumMemberValueHints = true,
        includeInlayFunctionLikeReturnTypes = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
      },
      semicolons = "ignore",
    }
  }
}
