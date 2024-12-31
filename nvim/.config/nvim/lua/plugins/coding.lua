return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "windwp/nvim-ts-autotag",
    event = { "BufReadPre", "BufNewFile" },
    opts = require "configs.autotag",
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "OXY2DEV/markview.nvim",
    -- lazy = false, -- Recommended
    ft = "markdown", -- If you decide to lazy-load anyway
  },

  { "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
  },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
    },
  },
}
