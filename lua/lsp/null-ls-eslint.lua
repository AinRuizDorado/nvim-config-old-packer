local null_ls = require("null-ls")
local eslint = require("eslint")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.eslint_d;
    null_ls.builtins.formatting.prettierd;
    null_ls.builtins.diagnostics.eslint;
    null_ls.builtins.completion.vsnip;
    null_ls.builtins.code_actions.gitsigns,
  },
  -- AUTO FORMAT AL GUARDAR, LO SACO PORQ EN TS ES MUY MOLESTO CON EL TSSERVER
  -- on_attach = function(client, bufnr)
  -- 	if client.supports_method("textDocument/formatting") then
  -- 		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  -- 		vim.api.nvim_create_autocmd("BufWritePre", {
  -- 			group = augroup,
  -- 			buffer = bufnr,
  -- 			callback = function()
  -- 				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
  -- 				vim.lsp.buf.formatting_sync()
  -- 			end,
  -- 		})
  -- 	end
  -- end,
})

eslint.setup({
  bin = 'eslint', -- or `eslint_d`
  code_actions = {
    enable = true,
    apply_on_save = {
      enable = true,
      types = { "problem" }, -- "directive", "problem", "suggestion", "layout"
    },
    disable_rule_comment = {
      enable = true,
      location = "separate_line", -- or `same_line`
    },
  },
  diagnostics = {
    enable = true,
    report_unused_disable_directives = false,
    run_on = "type", -- or `save`
  },
})
