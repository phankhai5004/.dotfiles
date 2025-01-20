return {
  {
    "f-person/git-blame.nvim",
    cmd = "GitBlameOpen",
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen" },
    config = function()
      require("diffview").setup()
    end,
  },
}
