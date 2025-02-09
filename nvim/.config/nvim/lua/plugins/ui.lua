return {
  {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
      require "configs.illuminate"
    end,
  },

  {
    "folke/todo-comments.nvim",
    event = "BufReadPost",
    cmd = { "TodoLocList", "TodoQuickFix", "TodoTelescope" },
    opts = {},
  },

  {
    "echasnovski/mini.nvim",
    event = "BufReadPost",
    version = "*",
    config = function()
      -- require("mini.animate").setup()
      require("mini.splitjoin").setup()
      require("mini.surround").setup()
    end,
  },

  {
    "mrjones2014/smart-splits.nvim",
    event = "BufReadPost",
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    opts = require "configs.render-markdown",
  },
}
