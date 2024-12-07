-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@class ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  hl_add = {
    IlluminatedWordText = { link = "Visual" },
    IlluminatedWordRead = { link = "Visual" },
    IlluminatedWordWrite = { link = "Visual" },

    FoldColumn = { bg = "black", fg = "white" },

    TodoBgTodo = { bg = "blue", fg = "black", bold = true },
    TodoFgTodo = { fg = "blue", bold = true },
    TodoBgNOTE = { bg = "vibrant_green", fg = "black", bold = true },
    TodoFgNOTE = { fg = "vibrant_green", bold = true },
    TodoBgFIX = { bg = "red", fg = "black", bold = true },
    TodoFgFIX = { fg = "red", bold = true },
    TodoBgWARN = { bg = "yellow", fg = "black", bold = true },
    TodoFgWARN = { fg = "yellow", bold = true },
  },

  hl_override = {
    NormalFloat = { bg = "black" },
    -- CmpDocBorder = { bg = "black", fg = "grey_fg" },
    -- CmpDoc = { bg = "black" },
    Comment = { italic = true },
    ["@comment"] = { italic = true, bold = true },
  },
}

M.ui = {
  cmp = {
    icons_left = false, -- only for non-atom styles!
    icons = true,
    lspkind_text = false,
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      tailwind = true, -- will work for css lsp too
      icon = "󱓻",
    },
  },

  telescope = { style = "bordered" },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
}

M.nvdash = {
  load_on_startup = true,
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

M.lsp = {
  signature = false,
}

M.colorify = {
  enabled = true,
  mode = "bg", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M
