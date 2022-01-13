local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true -- termguicolors
o.bg = 'light'
g.vscode_style = 'light'
cmd 'colorscheme vscode'
