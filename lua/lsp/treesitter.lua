local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = "all", -- one of "all" or a list of languages

-- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  ignore_install = { "phpdoc", "starlark", "python", "gdscript" }, -- List of parsers to ignore installing

  highlight = {
    enable = true, -- false will disable the whole extension
    -- disable = { "html" },
    additional_vim_regex_highlighting = false,
  },

  autopairs = {
    enable = true,
  },

  indent = { enable = true },
})
