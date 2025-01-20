-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@class ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  hl_add = {
    FoldColumn = { bg = "black", fg = "white" },

    IlluminatedWordText = { link = "Visual" },
    IlluminatedWordRead = { link = "Visual" },
    IlluminatedWordWrite = { link = "Visual" },
  },

  hl_override = {},

  integrations = {
    "todo",
    "trouble",
    "diffview",
  },

  transparency = false,
}

M.ui = {
  cmp = {
    icons_left = false, -- only for non-atom styles!
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
    abbr_maxwidth = 60,
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
  winopts = { winfixbuf = true },
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
  signature = true,
}

M.colorify = {
  enabled = true,
  mode = "bg", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

require "usercmds"

return M
