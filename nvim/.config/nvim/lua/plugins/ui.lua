return {
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
  },

  {
    "folke/todo-comments.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    opts = {},
  },

  {
    "echasnovski/mini.nvim",
    config = function()
      -- require("mini.animate").setup()
      require("mini.splitjoin").setup()
      require("mini.surround").setup()
    end,
  },

  { "mrjones2014/smart-splits.nvim" },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    opts = require "configs.render-markdown",
  },

}
