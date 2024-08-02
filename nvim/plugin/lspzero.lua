if vim.g.did_load_lspzero_plugin then
  return
end
vim.g.did_load_lspzero_plugin = true

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client,bufnr)
lsp_zero.default_keymaps({buffer=bufnr})
end)

require('lspconfig').lua_ls.setup({})
require('lspconfig').zls.setup({})



