-- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "cpp",
    "lua",
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

return M
