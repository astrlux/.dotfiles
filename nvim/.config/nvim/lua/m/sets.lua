local o, cmd = vim.opt, vim.cmd
o.mouse = 'a'
o.ruler = false
o.hidden = true
o.showcmd = false
o.showmode = false
o.showmatch = true
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
o.updatetime = 27
o.timeoutlen = 250
o.smartcase = true
o.ignorecase = true
o.incsearch = true
o.completeopt = 'menuone,noselect'
o.backup = false
o.undofile = true
-- COLORS
o.termguicolors = true
o.background = 'dark'
cmd 'colorscheme melange'
