local g, o = vim.g, vim.opt
o.list = true
o.listchars:append('space:⋅')
o.listchars:append('eol:↴')
g.indent_blankline_char = '┆'
g.indent_blankline_show_first_indent_level = true
g.indent_blankline_show_current_context = true
g.indent_blankline_context_patterns = {
  'class', 'function', 'method', 'block', 'list_literal', 'selector', '^if', '^table', 'if_statement', 'while', 'for'
}
