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
      require("mini.animate").setup()
    end,
  },

  {
    "mrjones2014/smart-splits.nvim",
    event = "BufReadPost",
  },
}
