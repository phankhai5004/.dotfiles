---@type snacks.Config
local opts = {
  bigfile = { enabled = true },
  quickfile = { enabled = true },
  words = { enabled = true },
  indent = require "configs.indent",
}

return opts
