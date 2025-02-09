return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = require "configs.cmp",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FilePost",
    opts = require "configs.ibline",
  },

  -- OTHERS
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.telescope",
  },
}
