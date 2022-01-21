local o, g, cmd = vim.opt, vim.g, vim.cmd
o.tgc = true -- termguicolors
o.bg = 'dark'
g.vscode_style = 'dark'
g.material_style = 'darker'
cmd 'colorscheme material'
