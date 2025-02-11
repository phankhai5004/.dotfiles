---@type snacks.Config
local opts = {
  bigfile = { enabled = true },
  quickfile = { enabled = true },
  words = { enabled = true },
  statuscolumn = { enabled = false },
  indent = require "configs.indent",
}

return opts
