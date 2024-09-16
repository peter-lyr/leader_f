require 'which-key'.register {
  ['<leader>f'] = { name = 'lsp', },
  ['<leader>fw'] = { function() vim.cmd 'ClangdSwitchSourceHeader' end, 'lsp: ClangdSwitchSourceHeader', mode = { 'n', 'v', }, },
}
