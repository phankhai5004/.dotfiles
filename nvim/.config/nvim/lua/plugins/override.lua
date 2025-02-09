return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts = require "configs.cmp"
      opts.sorting = opts.sorting or {}
      opts.sorting.comparators = opts.sorting.comparators or {}
      table.insert(opts.sorting.comparators, 1, require "clangd_extensions.cmp_scores")
    end,
    -- dependencies = {
    --   {
    --     -- snippet plugin
    --     "L3MON4D3/LuaSnip",
    --     config = function(_, opts)
    --       require("luasnip").config.set_config(opts)
    --
    --       local luasnip = require "luasnip"
    --
    --       luasnip.filetype_extend("javascriptreact", { "html" })
    --       luasnip.filetype_extend("typescriptreact", { "html" })
    --
    --       require "nvchad.configs.luasnip"
    --     end,
    --   },
    -- },
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
