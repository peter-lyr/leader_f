require 'which-key'.register {
  ['<leader>f'] = { name = 'lsp', },
  ['<leader>fw'] = { function() vim.cmd 'ClangdSwitchSourceHeader' end, 'lsp: ClangdSwitchSourceHeader', mode = { 'n', 'v', }, },
  ['<leader>ff'] = { function() vim.lsp.buf.format() end, 'lsp: format', mode = { 'n', 'v', }, },
}
