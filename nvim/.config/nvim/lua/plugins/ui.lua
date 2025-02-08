return {
  {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
      require "configs.illuminate"
    end,
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
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
}
