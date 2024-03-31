local overrides = require "configs.overrides"

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- GIT
  {
    "f-person/git-blame.nvim",
    cmd = "GitBlameToggle",
  },

  --USER INTERFACE
  {
    "RRethy/vim-illuminate",
    event = { "CursorHold", "CursorHoldI" },
    config = function()
      require "configs.illuminate"
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FilePost",
    opts = {
      indent = { char = "│", highlight = "IblChar" },
      scope = { enabled = false },
    },
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "blankline")

      local hooks = require "ibl.hooks"
      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
      require("ibl").setup(opts)
    end,
  },

  {
    "m-demare/hlargs.nvim",
    event = "BufWinEnter",
    config = function()
      require("hlargs").setup {
        hl_priority = 200,
      }
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
      { "js-everts/cmp-tailwind-colors", config = true },
    },
    -- opts = function(_, opts)
    --   local format_kinds = opts.formatting.format
    --   opts.formatting.format = function(entry, item)
    --     if item.kind == "Color" then
    --       item.kind = "⬤"
    --       format_kinds(entry, item)
    --       return require("tailwindcss-colorizer-cmp").formatter(entry, item)
    --     end
    --     return format_kinds(entry, item)
    --   end
    -- end,
    opts = require "configs.cmp",
    config = function(_, opts)
      -- local format_kinds = opts.formatting.format
      -- opts.formatting.format = function(entry, item)
      --   if item.kind == "Color" then
      --     item.kind = "⬤"
      --     format_kinds(entry, item)
      --     return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      --   end
      --   return format_kinds(entry, item)
      -- end

      require("cmp").setup(opts)
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {
        filetypes = {
          "*",
          -- cmp_docs = { always_update = true },
          -- cmp_menu = { always_update = true },
          "!cmp_menu",
        },
        user_default_options = {
          tailwind = true,
        },
      }
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
  },

  {
    "CRAG666/code_runner.nvim",
    cmd = { "RunCode" },
    config = function()
      require "configs.codeRunner"
    end,
  },

  { "NvChad/nvcommunity", { import = "nvcommunity.folds.ufo" } },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    config = function()
      require("neoscroll").setup {
        mappings = {
          "<C-u>",
          "<C-d>",
        },
      }
    end,
  },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
