require('lualine').setup {
  options = {
    theme = 'zenwritten',
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {'packer', 'Telescope', 'NvimTree', 'git', 'quickfix'}
  },
  sections = {
    lualine_a = {
      {
        'mode',
        icons_enabled = false,
        padding = 0,
        fmt = function()
          return ' '
        end
      }
    },
    -- lualine_b = {
    --   {
    --     'filename',
    --     path = 0,
    --     color = 'StatusLine'
    --   }
    -- },
    lualine_b = {
      {
        'buffers',
        max_length = vim.o.columns / 1.5,
        mode = 0,
        padding = {
          right = 1
        },
        color = {
          active = 'lualine_{section}_normal',
          inactive = 'lualine_{section}_inactive'
        }
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
        colored = false
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
    lualine_a = {
      {
        'filename',
        path = 1,
        padding = {
          left = 2
        },
        color = 'StatusLineNC'
      }
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {
      {
        'progress',
        padding = {
          right = 1
        },
        color = 'StatusLineNC'
      }
    }
  }
}
