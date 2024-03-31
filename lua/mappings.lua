require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("n", "<C-_>", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle comment" })

map(
	"v",
	"<C-_>",
	"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "Toggle comment" }
)

map("n", "<F6>", "<CMD>RunCode<CR>", { desc = "Compile and run code" })

map("n", "vae", "ggVG", { desc = "Select all lines in document" })

map("n", "dae", "ggVGd", { desc = "Delete all lines in document" })

map("n", "cae", "ggVGc", { desc = "Delete all lines in document" })

map("n", "yae", "ggVGy", { desc = "Yank all lines in document" })

--MOTION
map("n", "j", "gj", { desc = "move down" })

map("n", "k", "gk", { desc = "move up" })
