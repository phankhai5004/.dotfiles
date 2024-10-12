local overrides = require "configs.overrides"

return {
  {
    "neovim/nvim-lspconfig",
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
    dependencies = {
      { "JoosepAlviste/nvim-ts-context-commentstring" },
      {
        "folke/todo-comments.nvim",
        event = "BufReadPost",
        cmd = { "TodoLocList", "TodoQuickFix", "TodoTelescope" },
        opts = {},
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },
}
