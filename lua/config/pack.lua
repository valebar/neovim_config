vim.g.mapleader      = " "
vim.g.maplocalleader = "\\"

vim.o.relativenumber = true
vim.o.wrap           = false
vim.o.cursorline     = true
vim.opt.updatetime   = 250
vim.opt.signcolumn   = "yes"

vim.pack.add({
    -- Shared dependencies (must come before plugins that use them)
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/stevearc/dressing.nvim',

    -- Colorscheme
    'https://github.com/folke/tokyonight.nvim',

    -- Fuzzy finder
    { src = 'https://github.com/nvim-telescope/telescope.nvim', version = 'v0.2.0' },

    -- UI and editing utilities
    'https://github.com/echasnovski/mini.nvim',

    -- Git UI
    'https://github.com/kdheepak/lazygit.nvim',

    -- Flutter / Dart (setup is deferred to first Dart file open)
    'https://github.com/nvim-flutter/flutter-tools.nvim',
})

-- mini.nvim
require('mini.align').setup()
require('mini.bracketed').setup({
    buffer     = { options = { wrap = false } },
    comment    = { suffix = '', options = { wrap = false } },
    conflict   = { options = { wrap = false } },
    diagnostic = { options = { wrap = false } },
    file       = { suffix = '', options = { wrap = false } },
    indent     = { options = { wrap = false } },
    jump       = { suffix = '', options = { wrap = false } },
    location   = { options = { wrap = false } },
    oldfile    = { suffix = '', options = { wrap = false } },
    quickfix   = { options = { wrap = false } },
    treesitter = { suffix = '', options = { wrap = false } },
    undo       = { options = { wrap = false } },
    window     = { options = { wrap = false } },
    yank       = { options = { wrap = false } },
})
require('mini.comment').setup()
require('mini.move').setup()
require('mini.operators').setup({
    evaluate = { prefix = '' },
    exchange  = { prefix = '<leader>e' },
    multiply  = { prefix = '' },
    replace   = { prefix = '<leader>r' },
    sort      = { prefix = '' },
})
require('mini.completion').setup()
require('mini.statusline').setup({ use_icons = vim.g.have_nerd_font })
require('mini.surround').setup()
require('mini.icons').setup({ style = vim.g.have_nerd_font and 'glyph' or 'ascii' })
require('mini.diff').setup()
require('mini.tabline').setup()
require('mini.trailspace').setup()
require('mini.extra').setup()
require('mini.indentscope').setup()
require('mini.notify').setup()
require('mini.starter').setup({
    items = {
        { name = 'Find files', action = 'Telescope find_files', section = 'Telescope' },
        { name = 'Live grep',  action = 'Telescope live_grep',  section = 'Telescope' },
        { name = 'Buffers',    action = 'Telescope buffers',    section = 'Telescope' },
        { name = 'LazyGit',    action = 'LazyGit',              section = 'Git' },
        { name = 'Quit',       action = 'qa',                   section = 'Config' },
    },
    footer = table.concat({
        '',
        '  Navigation',
        '  gd  definition        gD  declaration',
        '  gr  references        gi  implementation',
        '  K   hover docs        <C-k> signature help',
        '',
        '  LSP Actions',
        '  <leader>rn  rename    <leader>ca  code action',
        '  <leader>f   format    <leader>d   diagnostics float',
        '',
        '  Diagnostics',
        '  ]g  next              [g  prev',
        '',
        '  Telescope  (<leader>f...)',
        '  ff  files   fg  grep    fb  buffers  fh  help',
        '  fd  diagnostics        fs  symbols',
        '  fr  references         fi  implementations',
        '',
        '  Git',
        '  <leader>lg  LazyGit',
    }, '\n'),
})

-- lazygit keymap
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- flutter-tools: defer setup to first Dart file open
vim.api.nvim_create_autocmd('FileType', {
    pattern  = 'dart',
    once     = true,
    callback = function()
        require('flutter-tools').setup()
        require('telescope').load_extension('flutter')
    end,
})
