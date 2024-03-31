-- overriding default plugin configs!

local M = {}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		-- "deno",
		"prettier",
		"emmet-language-server",
		"json-lsp",
		"tailwindcss-language-server",
		-- "unocss-language-server",

		-- shell
		"shfmt",
		"shellcheck",
		"bash-language-server",

		"clangd",
		"clang-format",
	},
	ui = {
		border = "rounded",
	},
}

M.treesitter = {
	ensure_installed = {
		"vim",
		"html",
		"css",
		"javascript",
		"json",
		"toml",
		"markdown",
		"c",
		"bash",
		"lua",
		"tsx",
		"typescript",
	},

	autotag = {
		enable = true,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn", -- set to `false` to disable one of the mappings
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
}

M.nvimtree = {
	view = {
		adaptive_size = true,
	},
	filters = {
		dotfiles = true,
		custom = { "node_modules" },
	},
	git = {
		enable = true,
		ignore = true,
	},
	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

M.cmp = {
	experimental = {
		ghost_text = true,
	},
}

return M
