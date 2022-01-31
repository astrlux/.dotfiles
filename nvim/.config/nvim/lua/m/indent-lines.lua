vim.opt.list = true
vim.opt.listchars:append('space:⋅')
vim.opt.listchars:append('eol:↴')
vim.g.indent_blankline_char = '│'
vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
  'class', 'function', 'method', 'block', 'list_literal', 'selector', '^if', '^table', 'if_statement', 'while', 'for'
}
