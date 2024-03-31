-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",

  telescope = { style = "bordered" },
  cheatsheet = { theme = "grid" },

  cmp = {
    icons = true,
    lspkind_text = false,
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
  },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil,
    modules = nil,
  },

  term = {
    hl = "Normal:term,WinSeparator:WinSeparator",
    sizes = { sp = 0.3, vsp = 0.2 },
    float = {
      relative = "editor",
      row = 0.05,
      col = 0.05,
      width = 0.9,
      height = 0.8,
      border = "rounded",
    },
  },

  hl_add = {
    -- IlluminatedWordText = { link = "Visual" },
    -- IlluminatedWordRead = { link = "Visual" },
    -- IlluminatedWordWrite = { link = "Visual" },

    FoldColumn = { bg = "black", fg = "white" },
  },

  hl_override = {
    Comment = { italic = true },
  },
}

return M
