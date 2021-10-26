local o, cmd = vim.opt, vim.cmd
o.mouse = 'a'
o.guicursor = ''
o.ruler = false
o.hidden = true
o.showcmd = false
o.showmode = false
o.cmdheight = 1
o.laststatus = 0
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.wrap = false
o.expandtab = true
o.smarttab = true
o.signcolumn = 'number'
o.nu = true
o.relativenumber = true
o.updatetime = 720
o.timeoutlen = 360
o.smartcase = true
o.ignorecase = true
o.incsearch = true
o.hlsearch = false
o.completeopt = 'menuone,noselect'
o.backup = false
o.undofile = true
-- COLORS
o.termguicolors = true
o.background = 'dark'

cmd [[
function! IndustryCustoms() abort
  hi LineNr guifg=#444444 guibg=#111122
  hi CursorLineNr guibg=#111122
  hi Visual guibg=#454545
  hi VertSplit guifg=black guibg=black
  hi Pmenu guibg=#222222
  hi PmenuSel guibg=#333333
  hi EndOfBuffer guibg=black guifg=black
  hi LspDiagnosticsSignWarning guifg=orange
  hi LspDiagnosticsFloatingWarning guifg=orange
  hi LspDiagnosticsVirtualTextWarning guifg=orange guibg=#4D2A00
  hi LspDiagnosticsSignHint guifg=yellow
  hi LspDiagnosticsFloatingHint guifg=yellow
  hi LspDiagnosticsVirtualTextHint guifg=yellow guibg=#4D2A00
  hi LspDiagnosticsSignInformation guifg=purple
  hi LspDiagnosticsFloatingInformation guifg=purple
  hi LspDiagnosticsVirtualTextInformation guifg=#301934
  hi LspDiagnosticsSignError guifg=red
  hi LspDiagnosticsFloatingError guifg=red
  hi LspDiagnosticsVirtualTextError guifg=red guibg=#330000
  hi TelescopeMatching guifg=none guibg=none
  hi TelescopeSelection guibg=#333222
endfunction
function! MelangeCustoms() abort
  hi LspDiagnosticsSignWarning guifg=orange
  hi LspDiagnosticsFloatingWarning guifg=orange
  hi LspDiagnosticsVirtualTextWarning guifg=orange guibg=#4D2A00
  hi LspDiagnosticsSignHint guifg=yellow
  hi LspDiagnosticsFloatingHint guifg=yellow
  hi LspDiagnosticsVirtualTextHint guifg=yellow guibg=#4D2A00
  hi LspDiagnosticsSignInformation guifg=purple
  hi LspDiagnosticsFloatingInformation guifg=purple
  hi LspDiagnosticsVirtualTextInformation guifg=#301934
  hi LspDiagnosticsSignError guifg=red
  hi LspDiagnosticsFloatingError guifg=red
  hi LspDiagnosticsVirtualTextError guifg=red guibg=#330000
  hi TelescopeMatching guifg=none guibg=none
  hi TelescopeSelection guibg=#444333
endfunction
augroup MyColors
  autocmd!
  autocmd ColorScheme industry call IndustryCustoms()
  autocmd ColorScheme melange call MelangeCustoms()
augroup END
]]
cmd 'colorscheme industry'
