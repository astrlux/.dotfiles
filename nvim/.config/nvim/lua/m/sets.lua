local o, cmd = vim.opt, vim.cmd
o.mouse = 'a'
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
o.updatetime = 15
o.timeoutlen = 500
o.smartcase = true
o.ignorecase = true
o.incsearch = true
o.hlsearch = true
o.completeopt = 'menuone,noselect'
o.backup = false
o.undofile = true
-- COLORS
o.termguicolors = true
o.background = 'dark'
cmd [[
function! MyHighlights() abort
  "hi LineNr guifg=grey
  hi Visual guifg=NONE guibg=#4A4A4A
  hi Search guifg=black guibg=yellow
  hi VertSplit guifg=black guibg=#4A4A4A
  hi Pmenu guibg=#1A1A1A
  hi PmenuSel guibg=#2A2A2A
  hi EndOfBuffer ctermbg=NONE ctermfg=NONE
  hi DiffAdd    guibg=green  guifg=black
  hi DiffDelete guibg=red    guifg=black
  hi DiffChange guibg=orange guifg=black
  hi DiffText   guibg=yellow guifg=black
  hi LspDiagnosticsSignHint guifg=orange
  hi LspDiagnosticsFloatingHint guifg=orange
  hi LspDiagnosticsVirtualTextHint guifg=orange guibg=#4D2A00
  hi LspDiagnosticsSignInformation guifg=purple
  hi LspDiagnosticsFloatingInformation guifg=purple
  hi LspDiagnosticsVirtualTextInformation guifg=#301934
  hi LspDiagnosticsSignError guifg=red
  hi LspDiagnosticsFloatingError guifg=red
  hi LspDiagnosticsVirtualTextError guifg=red guibg=#330000
  hi TelescopeMatching guifg=none guibg=none
  hi TelescopeSelection guibg=#2A2A2A
endfunction
augroup MyColors
  autocmd!
  autocmd ColorScheme * call MyHighlights()
augroup END
]]
cmd 'colorscheme industry'
