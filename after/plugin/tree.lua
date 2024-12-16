-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  sync_root_with_cwd = true,
})

local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>pv", function() api.tree.open() end)
vim.keymap.set("n", "", function() api.tree.close() end)
