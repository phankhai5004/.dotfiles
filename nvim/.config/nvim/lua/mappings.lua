require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-_>", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle comment" })

map(
  "v",
  "<C-_>",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "Toggle comment" }
)

map("n", "vae", "ggVG", { desc = "Select all lines in document" })

map("n", "dae", "ggVGd", { desc = "Delete all lines in document" })

map("n", "cae", "ggVGc", { desc = "Delete all lines in document" })

map("n", "yae", "ggVGy", { desc = "Yank all lines in document" })

map("n", "j", "gj")
map("n", "k", "gk")

map("n", "<leader>fT", "<cmd>TodoTelescope<CR>", {
  desc = "Todo | Telescope",
  silent = true,
})

map("n", "]d", "<ESC><cmd>lua vim.diagnostic.goto_next { float = { border = 'rounded' } }<CR>")
map("n", "[d", "<ESC><cmd>lua vim.diagnostic.goto_prev { float = { border = 'rounded' } }<CR>")

-- Keyboard users
map("n", "<C-t>", function()
  require("menu").open "default"
end, {})

-- mouse users + nvimtree users!
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Navigate left Tmux pane" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Navigate righ Tmux pane" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Navigate down Tmux pane" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Navigate up Tmux pane" })

map("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", {
  desc = "Diagnostics (Trouble)",
})

map("n", "<leader>tT", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", {
  desc = "Buffer Diagnostics (Trouble)",
})

map("n", "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", {
  desc = "Symbols (Trouble)",
})
map("n", "<leader>tl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", {
  desc = "LSP Definitions / references / ... (Trouble)",
})
map("n", "<leader>tL", "<cmd>Trouble loclist toggle<cr>", {
  desc = "Location List (Trouble)",
})
map("n", "<leader>tQ", "<cmd>Trouble qflist toggle<cr>", {
  desc = "Quickfix List (Trouble)",
})

-- map("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "telescope find files" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
