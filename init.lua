-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

require "custom.commands"
require "custom.autocmds"

local opt = vim.opt

opt.wrap = true
opt.foldlevel = 1
opt.foldnestmax = 2
opt.foldlevelstart = 99
opt.foldenable = true
opt.pumheight = 7
