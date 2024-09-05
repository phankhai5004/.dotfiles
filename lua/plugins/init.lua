local overrides = require "configs.overrides"

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- GIT
  {
    "f-person/git-blame.nvim",
    cmd = "GitBlameToggle",
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewToggleFiles" },
    config = function()
      require("diffview").setup()
    end,
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
    "folke/todo-comments.nvim",
    event = "BufReadPost",
    cmd = { "TodoTrouble", "TodoLocList", "TodoQuickFix", "TodoTelescope" },
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = require "configs.cmp",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FilePost",
    opts = {
      indent = { char = "│", highlight = "IblChar" },
      scope = { enabled = false },
    },
  },

  -- OTHERS
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      {
        "windwp/nvim-ts-autotag",
        config = function()
          require("nvim-ts-autotag").setup()
        end,
      },
    },
  },

  {
    "mbbill/undotree",
    cmd = { "UndotreeToggle" },
  },

  {
    "numToStr/Comment.nvim",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
    config = function()
      require("Comment").setup {
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },

  {
    "NvChad/nvcommunity",
    { import = "nvcommunity.folds.ufo" },
    { import = "nvcommunity.git.lazygit" },
    { import = "nvcommunity.editor.treesj" },
    { import = "nvcommunity.tools.telescope-fzf-native" },
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

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
