-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {

  telescope = { style = "bordered" },
  cheatsheet = { theme = "grid" },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil,
    modules = nil,
  },

  nvdash = {
    load_on_startup = true,
  },
}

M.term = {
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
}

M.base46 = {
  theme = "onedark",

  --TODO:
  --NOTE:
  --FIX:
  --WARN:

  hl_add = {
    IlluminatedWordText = { link = "Visual" },
    IlluminatedWordRead = { link = "Visual" },
    IlluminatedWordWrite = { link = "Visual" },

    FoldColumn = { bg = "black", fg = "white" },

    TodoBgTodo = { bg = "blue", fg = "black", bold = true },
    TodoFgTodo = { fg = "blue", bold = true },
    TodoBgNOTE = { bg = "vibrant_green", fg = "black", bold = true },
    TodoFgNOTE = { fg = "blue", bold = true },
    TodoBgFIX = { bg = "red", bold = true },
    TodoFgFIX = { fg = "red", bold = true },
    TodoBgWARN = { bg = "yellow", bold = true },
    TodoFgWARN = { fg = "yellow", bold = true },
  },

  hl_override = {
    CmpDocBorder = { bg = "black", fg = "grey_fg" },
    CmpDoc = { bg = "black" },
    Comment = { italic = true },
    ["@comment"] = { italic = true, bold = true },
  },
}

return M
