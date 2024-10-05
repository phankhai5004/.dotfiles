local overrides = require "configs.overrides"

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "pmizio/typescript-tools.nvim", enable = false },
    },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        config = function(_, opts)
          require("luasnip").config.set_config(opts)

          local luasnip = require "luasnip"

          luasnip.filetype_extend("javascriptreact", { "html" })
          luasnip.filetype_extend("typescriptreact", { "html" })

          require "nvchad.configs.luasnip"
        end,
      },

      {
        "supermaven-inc/supermaven-nvim",
        enabled = false,
        opts = {},
      },
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FilePost",
    opts = overrides.ibline,
  },

  -- OTHERS
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "numToStr/Comment.nvim",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
  },

  {
    "NvChad/nvcommunity",
    { import = "nvcommunity.folds.ufo" },
    { import = "nvcommunity.git.lazygit" },
    { import = "nvcommunity.editor.treesj" },
    { import = "nvcommunity.tools.telescope-fzf-native" },
    { import = "nvcommunity.editor.telescope-undo" },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },
}
