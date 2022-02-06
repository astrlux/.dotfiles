local o = vim.opt
o.mouse = 'a'
o.number = true
o.relativenumber = true
o.cursorline = false
o.laststatus = 0
o.ruler = false
o.hlsearch = false
o.hidden = true
o.showcmd = false
o.showmode = false
o.cmdheight = 1
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.smarttab = true
o.autoindent = true
o.smartindent = true
o.wrap = false
o.signcolumn = 'yes'
o.updatetime = 180
o.smartcase = true
o.ignorecase = true
o.showmatch = true
o.incsearch = true
o.completeopt = 'menuone,noselect'
o.undofile = true
vim.cmd [[
  augroup JumpCursorLastPosition
    autocmd!
    autocmd BufRead * autocmd FileType <buffer> ++once
          \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
  augroup END
]]
