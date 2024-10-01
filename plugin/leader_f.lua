local F = require 'f'

require 'which-key'.register {
  ['<leader>ff'] = { function() vim.lsp.buf.format() end, 'lsp: format', mode = { 'n', 'v', }, },
  ['<leader>fp'] = { function() F.format_paragraph() end, 'lsp: format paragraph', mode = { 'n', 'v', }, },
}

require 'which-key'.register {
  ['<leader>f'] = { name = 'lsp', },
  ['<leader>f<leader>'] = { name = 'lsp.more', },

  ['<leader>fw'] = { function() vim.cmd 'ClangdSwitchSourceHeader' end, 'lsp: ClangdSwitchSourceHeader', mode = { 'n', 'v', }, },

  ['<leader>fe'] = { function() vim.lsp.buf.references() end, 'lsp: references', mode = { 'n', 'v', }, },
  ['<leader>fr'] = { function() F.lsp_references() end, 'lsp: lsp_references', mode = { 'n', 'v', }, },
  ['<leader>fl'] = { function() F.lsp_document_symbols() end, 'lsp: lsp_document_symbols', mode = { 'n', 'v', }, },
  ['<leader>fo'] = { '<cmd>AerialNavToggle<cr>', 'lsp: AerialNavToggle', mode = { 'n', 'v', }, },

  ['<leader>fj'] = { '<cmd>AerialNext<cr>', 'lsp: AerialNext', mode = { 'n', 'v', }, },
  ['<leader>fk'] = { '<cmd>AerialPrev<cr>', 'lsp: AerialPrev', mode = { 'n', 'v', }, },

  ['<leader>fd'] = { name = 'lsp.definision/declaration/diagnostic', },
  ['<leader>fdj'] = { function() vim.diagnostic.goto_next() end, 'lsp: diagnostic.goto_next', mode = { 'n', 'v', }, },
  ['<leader>fdk'] = { function() vim.diagnostic.goto_prev() end, 'lsp: diagnostic.goto_prev', mode = { 'n', 'v', }, },
  ['<leader>fdf'] = { function() vim.diagnostic.open_float() end, 'lsp: diagnostic.open_float', mode = { 'n', 'v', }, },
  ['<leader>fdl'] = { function() vim.diagnostic.setloclist() end, 'lsp: diagnostic.setloclist', mode = { 'n', 'v', }, },
  ['<leader>fde'] = { function() vim.diagnostic.enable() end, 'lsp: diagnostic.enable', mode = { 'n', 'v', }, },
  ['<leader>fdd'] = { function() vim.diagnostic.enable(false) end, 'lsp: diagnostic.disable', mode = { 'n', 'v', }, },
  ['<leader>fdi'] = { function() vim.lsp.buf.definition() end, 'lsp: definition', mode = { 'n', 'v', }, },
  ['<leader>fdc'] = { function() vim.lsp.buf.declaration() end, 'lsp: declaration', mode = { 'n', 'v', }, },

  ['<leader>fh'] = { function() vim.lsp.buf.hover() end, 'lsp: hover', mode = { 'n', 'v', }, },

  ['<leader>fc'] = { function() vim.lsp.buf.code_action() end, 'lsp: code_action', mode = { 'n', 'v', }, },

  ['<leader>fn'] = { ':<c-u>IncRename <c-r><c-w>', 'lsp: IncRename', mode = { 'n', 'v', }, },
  ['<leader>f<leader>s'] = { function() vim.cmd 'LspStart' end, 'lsp: LspStart', mode = { 'n', 'v', }, },
  ['<leader>f<leader>w'] = { function() vim.cmd 'LspStop' end, 'lsp: LspStop', mode = { 'n', 'v', }, },
}
