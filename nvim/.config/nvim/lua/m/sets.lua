local o, cmd = vim.opt, vim.cmd
o.mouse = 'a'
o.ruler = false
o.hidden = true
o.showcmd = false
o.showmode = false
o.cmdheight = 1
o.laststatus = 0
o.scrolloff = 8
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.wrap = false
o.expandtab = true
o.smarttab = true
o.signcolumn = 'number'
o.nu = true
o.relativenumber = true
o.updatetime = 27
o.timeoutlen = 400
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
function! MyHighlights() abort
  hi LineNR guifg=gray
  hi VertSplit guifg=black guibg=#2A2A2A
  hi Pmenu guibg=#1A1A1A
  hi PmenuSel guibg=#2A2A2A
  hi EndOfBuffer ctermbg=NONE ctermfg=NONE
  hi TelescopeMatching guibg=none
  hi TelescopeSelection guibg=#2A2A2A
endfunction
augroup MyColors
  autocmd!
  autocmd ColorScheme * call MyHighlights()
augroup END
]]
cmd 'colorscheme industry'
