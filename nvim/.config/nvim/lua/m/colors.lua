local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true -- termguicolors
o.bg = 'dark' -- background [dark/light]
-- g.vscode_style = 'dark'
cmd 'colorscheme gruvbox'
