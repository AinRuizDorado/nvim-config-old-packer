local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {
    -- layout_strategy = "vertical",
    -- layout_config = {
    --   vertical = {
    --     width = 0.9,
    --     height = 0.9,
    --     preview_height = 0.6,
    --     preview_cutoff = 0
    --   }
    -- },
    color_devicons = true,
    prompt_prefix = "$ ",
    file_ignore_patterns = { "^.git/", "^.node_modules/" },
    mappings = {
      i = {
        ['<esc>'] = actions.close
      }
    }
  }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- telescope.load_extension('fzf')

local M = {}

M.search_dotfiles = function()
  require('telescope.builtin').find_files({
    prompt_title = "<.dotfiles>",
    cwd = '~/.dotfiles',
    hidden = true
  })
end

M.project_files = function()
  local opts = {}
  local ok = pcall(require('telescope.builtin').git_files, opts)
  if not ok then require('telescope.builtin').find_files(opts) end
end

return M
