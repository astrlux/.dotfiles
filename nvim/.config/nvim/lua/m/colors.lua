local o, _, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true -- termguicolors
o.bg = 'light' -- background [dark/light]
cmd 'colorscheme zenwritten'
