return {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    -- These are the key filetypes for JavaScript and JSX
    'javascript',
    'javascriptreact',

    -- Keep these if you might ever open a TypeScript file
    'typescript',
    'typescriptreact'
  },
  root_markers = {
    'tsconfig.json',
    'jsconfig.json', -- Important for JavaScript projects!
    'package.json',
    '.git'
  },
  -- Optional: If you want to configure specific settings for JavaScript
  settings = {
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayEnumMemberValueHints = true,
        includeInlayFunctionLikeReturnTypes = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
      },
      semicolons = "ignore", -- Example setting
    }
  }
}
