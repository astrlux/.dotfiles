local o = vim.opt
o.mouse = 'a'
o.number = true
o.relativenumber = true
o.cursorline = true
o.laststatus = 0
o.ruler = false
o.hlsearch = true
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
o.signcolumn = 'number'
o.updatetime = 500
o.smartcase = true
o.showmatch = true
o.incsearch = true
o.completeopt = 'menuone,noselect'
o.undofile = true
-- o.foldmethod = 'manual'
vim.cmd 'filetype plugin indent on'
-- vim.cmd [[
-- augroup JumpCursorLastPosition
--   autocmd!
--   autocmd BufRead * autocmd FileType <buffer> ++once
--         \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
-- augroup END
-- ]]
