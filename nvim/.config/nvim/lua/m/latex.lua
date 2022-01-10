-- LaTeX live preview
vim.api.nvim_exec([[ 
  autocmd FileType tex nnoremap <buffer> <C-T> :silent !xelatex % && open -a Preview && open -a kitty<CR>
  autocmd FileType tex nnoremap <buffer> T :silent !open -a Preview %:r.pdf && open -a kitty<CR><CR>
]], false)
