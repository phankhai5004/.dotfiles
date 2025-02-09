require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "vae", "ggVG", { desc = "Select all lines in document" })

map("n", "dae", "ggVGd", { desc = "Delete all lines in document" })

map("n", "cae", "ggVGc", { desc = "Delete all lines in document" })

map("n", "yae", "ggVGy", { desc = "Yank all lines in document" })

map("n", "j", "gj")
map("n", "k", "gk")

map("n", "<leader>fT", "<cmd>TodoTelescope<CR>", { desc = "Todo | Telescope" })

map("n", "]d", "<ESC><cmd>lua vim.diagnostic.goto_next { float = { border = 'rounded' } }<CR>")
map("n", "[d", "<ESC><cmd>lua vim.diagnostic.goto_prev { float = { border = 'rounded' } }<CR>")

map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Navigate left Tmux pane" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Navigate righ Tmux pane" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Navigate down Tmux pane" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Navigate up Tmux pane" })

map("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })

map("n", "<leader>tT", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })

map("n", "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })

map(
  "n",
  "<leader>tl",
  "<cmd>Trouble lsp toggle focus=false<cr>",
  { desc = "LSP Definitions / references / ... (Trouble)" }
)

map("n", "<leader>tL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
map("n", "<leader>tQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

map("n", "<A-H>", require("smart-splits").resize_left)
map("n", "<A-J>", require("smart-splits").resize_down)
map("n", "<A-K>", require("smart-splits").resize_up)
map("n", "<A-L>", require("smart-splits").resize_right)

map("n", "<leader><leader>h", require("smart-splits").swap_buf_left, { desc = "Swap buffer to left" })
map("n", "<leader><leader>j", require("smart-splits").swap_buf_down, { desc = "Swap buffer to down" })
map("n", "<leader><leader>k", require("smart-splits").swap_buf_up, { desc = "Swap buffer to up" })
map("n", "<leader><leader>l", require("smart-splits").swap_buf_right, { desc = "Swap buffer to right" })

map("n", "<A-n>", function()
  Snacks.words.jump(vim.v.count1, true)
end)

map("n", "<A-p>", function()
  Snacks.words.jump(-vim.v.count1, true)
end)
