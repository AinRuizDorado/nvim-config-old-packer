local nvim_lsp = require('lspconfig')

nvim_lsp.tsserver.setup {}
nvim_lsp.sumneko_lua.setup{}
-- local project_library_path = "/path/to/project/lib"
-- local cmd = {}

-- require'lspconfig'.angularls.setup{
--   cmd = cmd,
-- }
--
----
--require'lspconfig'.angularls.setup{}
-- print("angular loaded")
