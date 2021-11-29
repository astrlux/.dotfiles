-- LaTeX live preview
vim.api.nvim_exec([[
  autocmd FileType tex nmap <buffer> <C-T> :!xelatex %<CR>
  autocmd FileType tex nmap <buffer> T :!open -a Skim %:r.pdf<CR><CR>
]], false)

