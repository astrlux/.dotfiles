require('lualine').setup {
  options = {
    theme = 'auto',
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {'packer', 'Telescope', 'NvimTree', 'git', 'quickfix', 'Fugitive'}
  },
  sections = {
    lualine_b = {
      {
        'filename',
        path = 1,
        color = 'StatusLine'
      }
    },
    lualine_c = {
      {
        'diagnostics',
        symbols = {
          error = '▬',
          warn = '▪',
          hint = '▪',
          info = '⋅'
        }
      }
    },
    lualine_x = {
      {
        'diff',
        colored = true
      }
    },
    lualine_y = {{'branch'}},
    -- test line
    lualine_z = {
      {
        'progress',
        padding = {
          right = 1
        }
      }
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  }
}
