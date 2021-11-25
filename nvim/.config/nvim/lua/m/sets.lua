local o, g, cmd = vim.opt, vim.g, vim.cmd
o.laststatus = 0
o.nu = true
o.guicursor = ''
o.mouse = 'a'
o.ruler = false
o.hidden = true
o.hlsearch = false
o.showcmd = false
o.showmode = false
o.cmdheight = 1
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.autoindent = true
o.smarttab = true
o.wrap = false
o.signcolumn = 'number'
o.updatetime = 720
o.timeoutlen = 360
o.smartcase = true
o.ignorecase = true
o.incsearch = true
o.completeopt = 'menuone,noselect'
o.backup = false
o.undofile = true
o.cursorline = true
-- COLORS
o.termguicolors = true
o.background = 'dark'
-- require('material').setup({
--  contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
--  borders = false, -- Enable borders between verticaly split windows
--  popup_menu = 'dark', -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )
--  italics = {
--    comments = true, -- Enable italic comments
--    keywords = true, -- Enable italic keywords
--    functions = true, -- Enable italic functions
--    strings = true, -- Enable italic strings
--    variables = true -- Enable italic variables
--  },
--  contrast_windows = { -- Specify which windows get the contrasted (darker) background
--    'terminal', -- Darker terminal background
--    'packer', -- Darker packer background
--    'qf' -- Darker qf list background
--  },
--  text_contrast = {
--    lighter = false, -- Enable higher contrast text for lighter style
--    darker = false -- Enable higher contrast text for darker style
--  },
--  disable = {
--    background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
--    term_colors = false, -- Prevent the theme from setting terminal colors
--    eob_lines = true -- Hide the end-of-buffer lines
--  },
--  custom_highlights = {
--    Visual = {
--      bg = '#0c3953'
--    },
--    ErrorMsg = {
--      fg = 'red',
--      bg = '#330000'
--    },
--    diffAdded = {
--      fg = '#0EFF00',
--      bg = '#013220'
--    },
--    diffRemoved = {
--      fg = 'red',
--      bg = '#330000'
--    },
--    LspDiagnosticsSignWarning = {
--      fg = 'orange'
--    },
--    LspDiagnosticsVirtualTextWarning = {
--      fg = 'orange',
--      bg = '#4D2A00'
--    },
--    LspDiagnosticsSignHint = {
--      fg = 'yellow'
--    },
--    LspDiagnosticsFloatingHint = {
--      fg = 'yellow'
--    },
--    LspDiagnosticsVirtualTextHint = {
--      fg = 'yellow',
--      bg = '#4D2A00'
--    },
--    LspDiagnosticsSignInformation = {
--      fg = 'purple'
--    },
--    LspDiagnosticsFloatingInformation = {
--      fg = 'purple'
--    },
--    LspDiagnosticsVirtualTextInformation = {
--      fg = '#301934'
--    },
--    LspDiagnosticsSignError = {
--      fg = 'red'
--    },
--    LspDiagnosticsFloatingError = {
--      fg = 'red'
--    },
--    LspDiagnosticsVirtualTextError = {
--      fg = 'red',
--      bg = '#330000'
--    }
--  }
-- })
-- g.material_style = 'darker'
cmd 'colorscheme melange'
