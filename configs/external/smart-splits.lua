local present, smartSplits = pcall(require, "smart-splits")

if not present then
	return
end

smartSplits.setup({
	ignored_filetypes = {
		"nofile",
		"quickfix",
		"prompt",
	},
	ignored_buftypes = { "NvimTree" },
	-- the default number of lines/columns to resize by at a time
	default_amount = 3,
	at_edge = "wrap",
	move_cursor_same_row = false,
	cursor_follows_swapped_bufs = false,
	resize_mode = {
		-- key to exit persistent resize mode
		quit_key = "<ESC>",
		-- keys to use for moving in resize mode
		-- in order of left, down, up' right
		resize_keys = { "h", "j", "k", "l" },
		-- set to true to silence the notifications
		-- when entering/exiting persistent resize mode
		silent = false,
		-- must be functions, they will be executed when
		-- entering or exiting the resize mode
		hooks = {
			on_enter = nil,
			on_leave = nil,
		},
	},
	-- ignore these autocmd events (via :h eventignore) while processing
	-- smart-splits.nvim computations, which involve visiting different
	-- buffers and windows. These events will be ignored during processing,
	-- and un-ignored on completed. This only applies to resize events,
	-- not cursor movement events.
	ignored_events = {
		"BufEnter",
		"WinEnter",
	},
	-- enable or disable a multiplexer integration;
	-- automatically determined, unless explicitly disabled or set,
	-- by checking the $TERM_PROGRAM environment variable,
	-- and the $KITTY_LISTEN_ON environment variable for Kitty
	multiplexer_integration = nil,
	-- disable multiplexer navigation if current multiplexer pane is zoomed
	-- this functionality is only supported on tmux and Wezterm due to kitty
	-- not having a way to check if a pane is zoomed
	disable_multiplexer_nav_when_zoomed = true,
	-- Supply a Kitty remote control password if needed,
	-- or you can also set vim.g.smart_splits_kitty_password
	-- see https://sw.kovidgoyal.net/kitty/conf/#opt-kitty.remote_control_password
	kitty_password = nil,
	-- default logging level, one of: 'trace'|'debug'|'info'|'warn'|'error'|'fatal'
	log_level = "info",
})

vim.keymap.set("n", "<A-left>", require("smart-splits").resize_left)
vim.keymap.set("n", "<A-down>", require("smart-splits").resize_down)
vim.keymap.set("n", "<A-up>", require("smart-splits").resize_up)
vim.keymap.set("n", "<A-right>", require("smart-splits").resize_right)
-- swapping buffers between windows
vim.keymap.set(
	"n",
	"<leader><leader>h",
	require("smart-splits").swap_buf_left,
	{ desc = "Swap to left window" }
)
vim.keymap.set(
	"n",
	"<leader><leader>j",
	require("smart-splits").swap_buf_down,
	{ desc = "Swap to right window" }
)
vim.keymap.set(
	"n",
	"<leader><leader>k",
	require("smart-splits").swap_buf_up,
	{ desc = "Swap to right window" }
)
vim.keymap.set(
	"n",
	"<leader><leader>l",
	require("smart-splits").swap_buf_right,
	{ desc = "Swap to right window" }
)
