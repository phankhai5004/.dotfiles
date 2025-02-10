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
    -- enabled = false,
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

  {
    "folke/which-key.nvim",
    keys = { "<leader>", "<c-w>", '"', "'", "`", "c", "v", "g", "z" },
    cmd = "WhichKey",
    opts_extend = { "spec" },
    opts = function()
      dofile(vim.g.base46_cache .. "whichkey")
      return require "configs.which-key"
    end,
  },

  { "nvzone/menu", enabled = false },
}
