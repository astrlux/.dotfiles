local g, cmd = vim.g, vim.cmd
require('material').setup({
  contrast = {
    sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = true, -- Enable contrast for floating windows
    line_numbers = false, -- Enable contrast background for line numbers
    sign_column = false, -- Enable contrast background for the sign column
    cursor_line = false, -- Enable darker background for the cursor line
    non_current_windows = false, -- Enable darker background for non-current windows
    popup_menu = true -- Enable lighter background for the popup menu
  },
  popup_menu = 'dark', -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )
  italics = {
    comments = true, -- Enable italic comments
    keywords = false, -- Enable italic keywords
    functions = false, -- Enable italic functions
    strings = true, -- Enable italic strings
    variables = false -- Enable italic variables
  },
  contrast_windows = { -- Specify which windows get the contrasted (darker) background
    'terminal', -- Darker terminal background
    'packer', -- Darker packer background
    'qf', -- Darker qf list background
    'NvimTree'
  },
  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = false -- Enable higher contrast text for darker style
  },
  disable = {
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = true, -- Hide the end-of-buffer lines
    borders = true
  },
  custom_highlights = {
    CursorLineNr = {
      fg = 'orange',
      bg = 'NONE'
    },
    Visual = {
      bg = '#0c3953'
    },
    ErrorMsg = {
      fg = 'red',
      bg = '#330000'
    },
    diffAdded = {
      fg = '#0EFF00',
      bg = '#013220'
    },
    diffRemoved = {
      fg = 'red',
      bg = '#330000'
    },
    LspDiagnosticsSignWarning = {
      fg = 'orange'
    },
    LspDiagnosticsVirtualTextWarning = {
      fg = 'orange',
      bg = '#4D2A00'
    },
    LspDiagnosticsSignHint = {
      fg = 'yellow'
    },
    LspDiagnosticsFloatingHint = {
      fg = 'yellow'
    },
    LspDiagnosticsVirtualTextHint = {
      fg = 'yellow',
      bg = '#4D2A00'
    },
    LspDiagnosticsSignInformation = {
      fg = 'purple'
    },
    LspDiagnosticsFloatingInformation = {
      fg = 'purple'
    },
    LspDiagnosticsVirtualTextInformation = {
      fg = '#301934'
    },
    LspDiagnosticsSignError = {
      fg = 'red'
    },
    LspDiagnosticsFloatingError = {
      fg = 'red'
    },
    LspDiagnosticsVirtualTextError = {
      fg = 'purple',
      bg = '#330000'
    }
  }
})
g.material_style = 'darker'
cmd 'colorscheme material'
