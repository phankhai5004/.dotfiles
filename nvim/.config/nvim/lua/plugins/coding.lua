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
    opts = require "configs.snacks",
  },

  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = require "configs.lazydev",
  },

  {
    "epwalsh/obsidian.nvim",
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = require "configs.obsidian",
  },
}
