local ok, codeRunner = pcall(require, "code_runner")

if not ok then
	return
end

codeRunner.setup({
	mode = "float",
	-- Focus on runner window(only works on toggle, term and tab mode)
	focus = true,
	-- startinsert (see ':h inserting-ex')
	startinsert = false,
	insert_prefix = "",
	float = {
		close_key = "q",
		-- Window border (see ':h nvim_open_win')
		border = "rounded",

		-- Num from `0 - 1` for measurements
		height = 0.9,
		width = 0.9,
		x = 0.5,
		y = 0.5,

		-- Highlight group for floating window/border (see ':h winhl')
		border_hl = "FloatBorder",
		float_hl = "Normal",

		-- Transparency (see ':h winblend')
		blend = 0,
	},
	filetype_path = "",
	-- Execute before executing a file
	before_run_filetype = function()
		vim.cmd(":w")
	end,
	filetype = {
		javascript = "node",
		java = {
			"cd $dir &&",
			"javac $fileName &&",
			"java $fileNameWithoutExt",
		},
		c = {
			"cd $dir &&",
			"gcc $fileName",
			"-o $fileNameWithoutExt &&",
			"$dir/$fileNameWithoutExt",
		},
		cpp = "cd $dir && g++ -g $fileName -o output/$fileNameWithoutExt && $dir/output/$fileNameWithoutExt",
		python = "python -u",
		sh = "bash",
		rust = {
			"cd $dir &&",
			"rustc $fileName &&",
			"$dir/$fileNameWithoutExt",
		},
	},
	project_path = "",
	project = {},
	prefix = "",
})
