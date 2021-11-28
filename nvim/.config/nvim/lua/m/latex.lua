-- LaTeX live preview
local g = vim.g
g.livepreview_previewer = 'open -a Preview'
vim.api.nvim_exec([[
  augroup LaTeX
    autocmd!
    autocmd Filetype tex setl updatetime=1
  augroup end
]], false)
