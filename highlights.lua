-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  Operator = {
    italic = true,
  },
  CmpDocBorder = {
    fg = "#565c64",
    bg = "#1e222a",
  },
  CmpDoc = {
    bg = "#1e222a",
  },
}

---@type HLTable
M.add = {
  RainbowDelimiterRed = { fg = "red" },
  RainbowDelimiterYellow = { fg = "yellow" },
  RainbowDelimiterBlue = { fg = "blue" },
  RainbowDelimiterOrange = { fg = "orange" },
  RainbowDelimiterGreen = { fg = "green" },
  RainbowDelimiterViolet = { fg = "purple" },
  RainbowDelimiterCyan = { fg = "cyan" },

  IlluminatedWordText = { link = "Visual" },
  IlluminatedWordRead = { link = "Visual" },
  IlluminatedWordWrite = { link = "Visual" },
  GlancePreviewBorderBottom = { fg = "#129fba" },
}

return M
