local F = require 'f'

require 'which-key'.register {
  ['<leader>f'] = { name = 'lsp', },
  ['<leader>fw'] = { function() vim.cmd 'ClangdSwitchSourceHeader' end, 'lsp: ClangdSwitchSourceHeader', mode = { 'n', 'v', }, },
  ['<leader>ff'] = { function() vim.lsp.buf.format() end, 'lsp: format', mode = { 'n', 'v', }, },
  ['<leader>fp'] = { function() F.format_paragraph() end, 'lsp: format paragraph', mode = { 'n', 'v', }, },

  ['<leader>fe'] = { function() vim.lsp.buf.references() end, 'lsp: references', mode = { 'n', 'v', }, },
  ['<leader>fr'] = { function() F.lsp_references() end, 'lsp: lsp_references', mode = { 'n', 'v', }, },
  ['<leader>fl'] = { function() F.lsp_document_symbols() end, 'lsp: lsp_document_symbols', mode = { 'n', 'v', }, },
  ['<leader>fo'] = { '<cmd>AerialNavToggle<cr>', 'lsp: AerialNavToggle', mode = { 'n', 'v', }, },

  ['<leader>fj'] = { '<cmd>AerialNext<cr>', 'lsp: AerialNext', mode = { 'n', 'v', }, },
  ['<leader>fk'] = { '<cmd>AerialPrev<cr>', 'lsp: AerialPrev', mode = { 'n', 'v', }, },

  ['<leader>fn'] = { ':<c-u>IncRename <c-r><c-w>', 'lsp: IncRename', mode = { 'n', 'v', }, },
}
